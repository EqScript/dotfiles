# ~/.config/fish/config.fish

# Disable the default greeting message
set -g fish_greeting ""

# Set up the editor (Vim, as requested)
set -gx EDITOR vim
set -gx VISUAL vim

# Initialize Starship prompt if installed
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
