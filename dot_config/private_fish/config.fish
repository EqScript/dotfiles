# ~/.config/fish/config.fish

# Disable the default greeting message
set -g fish_greeting ""

# Set up the editor (Vim, as requested)
set -gx EDITOR hx
set -gx VISUAL hx

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
fish_add_path /srv/firmware/
