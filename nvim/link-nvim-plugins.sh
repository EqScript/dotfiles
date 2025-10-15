#!/usr/bin/env bash

PLUGIN_DIR="$HOME/.config/nvim/pack/plugins/start"
mkdir -p "$PLUGIN_DIR"

# List of Neovim plugins to symlink from Nix store
PLUGINS=(
  nvim-lspconfig
  nvim-treesitter
  telescope-nvim
  plenary-nvim
  catppuccin-nvim
  conform-nvim
  nvim-autopairs
  comment-nvim
  lualine-nvim
  cmp-nvim-lsp
  todo-comments-nvim
  trouble-nvim
  undotree
  jedi-vim
)

echo "🔄 Linking Neovim plugins from Nix store..."

linked_count=0

for plugin in "${PLUGINS[@]}"; do
  STORE_PATH=$(nix eval --impure --raw --extra-experimental-features nix-command --expr "with import <nixpkgs> {}; vimPlugins.${plugin}" 2>/dev/null)
  TARGET="$PLUGIN_DIR/$plugin"

  if [ -z "$STORE_PATH" ]; then
    echo "⚠️  Plugin not found in nixpkgs: $plugin"
    continue
  fi

  if [ -e "$TARGET" ]; then
    echo "✅ Already linked: $plugin"
  else
    ln -s "$STORE_PATH" "$TARGET"
    echo "🔗 Linked: $plugin"
    ((linked_count++))
  fi
done

echo "🟢 $linked_count plugin(s) symlinked into Neovim runtime"
