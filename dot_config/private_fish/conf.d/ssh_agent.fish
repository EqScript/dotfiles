# ~/.config/fish/conf.d/ssh_agent.fish
function ssha
    # Check if the socket is actually valid and exists
    if not set -q SSH_AUTH_SOCK; or not test -S "$SSH_AUTH_SOCK"
        # Start agent and fix the output for Fish
        # We use -c for csh style, then convert it to Fish 'set -gx'
        ssh-agent -c | grep -v echo | sed 's/^setenv/set -gx/; s/;/ /g' | source
        echo "SSH Agent started and socket set."
    else
        echo "SSH Agent is already running at $SSH_AUTH_SOCK"
    end
end
