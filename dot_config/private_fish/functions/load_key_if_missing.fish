# Adding an SSH key if not active
function load_key_if_missing
    set -l pattern $argv[1]
    if ssh-add -l | grep -q "$pattern"
        # Key found, now exit
        return 0
    end

    set -l found_key (ls ~/.ssh/*"$pattern"* | grep -v ".pub" | head -n 1)

    if test -n "$found_key"
        echo "Found key file: $found_key, adding..."
        ssh-add "$found_key"
    else
        echo "No keyfile found matching $pattern"
        return 1
    end
end
