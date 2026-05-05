# ~/.config/fish/config.fish

# Disable the default greeting message
set -g fish_greeting ""

# Set up the editor (Vim, as requested)
set -gx EDITOR nvim
set -gx VISUAL nvim

# Initialize Starship prompt if installed
set -gx STARSHIP_CONFIG ~/.config/starship/jetpack.toml
if command -q starship
    starship init fish | source
end

# Initialize Zoxide (modern 'cd') if installed
if command -q zoxide
    zoxide init fish | source
end

# Interactive session settings
if status is-interactive
    # Add custom keybindings
    # This allows you to open the current command line in Vim with Alt-e
    bind \ee edit_command_buffer
end

fish_add_path "$HOME/.cargo/bin"
fish_add_path "$HOME/.local/bin"
fish_add_path "$HOME/bin"
fish_add_path "$HOME/.platformio/penv/bin"
fish_add_path "$HOME/.config/scripts"
fish_add_path "/opt/RustRover-2025.2.5/bin/"
fish_add_path /srv/syshmi/
fish_add_path "$HOME/.pyenv/bin"

# Only run pyenv init in interactive shells
if status is-interactive
    pyenv init - | source
    pyenv virtualenv-init - | source
end

# ESP-IDF activation
alias get_idf="source /home/sergio/.espressif/v6.0/esp-idf/export.fish"

# Show local IP in zellij bar
function update_zellij_session --on-event fish_prompt
    if set -q ZELLIJ
        set -l ip (ip -4 route get 1 | sed -n 's/.*src \([0-9.]*\).*/\1/p')
        zellij action rename-pane "🌐 $ip" 2>/dev/null
    end
end
