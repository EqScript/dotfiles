# ESP-IDF environment setuip script load
# source $HOME/esp/esp-idf/export.sh
# Adding necessary env variable for ESP-IDF
#export IDF_TOOLS_PATH=$HOME/.espressif
# PIO env variable
export PLATFORMIO_CORE_DIR=/home/sergio/.platformio
export IDF_PATH=/home/sergio/.platformio/packages/framework-espidf

# System stuff
export PATH="$HOME/.local/bin:$PATH"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Ubuntu Boatman Server alias
alias boatman="ssh -i ~/.ssh/boatman_server_key sergio@192.168.197.168"
alias idf='. ~/esp/esp-idf/export.sh'
alias acd='cd ~/Codework/aux_control_display'
alias suspend="systemctl suspend"
alias lvgl='~/Downloads/Soft/DevTools/LVGL-Editor-0.2.0.AppImage'
#alias nvim='~/Downloads/Soft/DevTools/nvim-linux-x86_64.appimage'
# minicom to ttyACM0 
# alias acm0='minicom -D /dev/ttyACM0 | ccze -A'

# tio
alias acm0='stdbuf -oL tio /dev/ttyACM0 | batcat -l log --paging=never --style=plain'
alias usb0='stdbuf -oL tio /dev/ttyUSB0 | batcat -l log --paging=never --style=plain'
alias usb1='stdbuf -oL tio /dev/ttyUSB1 | batcat -l log --paging=never --style=plain'
# resolving buffering issues
alias tiolog='stdbuf -oL tio'

# lazygit
alias lg='lazygit'

# cd to ~/Codework and subfolders
alias cw='cd ~/Codework'
alias ecu='cd ~/Codework/engine_control_unit/'
alias acd='cd ~/Codework/aux_control_display/'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Zen Browser 
alias zen='flatpak run app.zen_browser.zen'

# batcat
alias cat="batcat"

# Bluetooth Control Section

# Alias for bluetoothctl for quick access to the interactive prompt
alias bt='bluetoothctl'

# Function to show paired and connected Bluetooth devices
# It lists devices, their MAC addresses, and connection status.
btshow() {
    echo "Listing Bluetooth devices..."
    bluetoothctl devices Paired | while read -r line ; do
        device_mac=$(echo "$line" | awk '{print $2}')
        device_name=$(echo "$line" | awk '{print $3}')
        
        # Check if the device is connected
        if bluetoothctl info "$device_mac" | grep -q "Connected: yes"; then
            echo "  [CONNECTED] $device_name ($device_mac)"
        else
            echo "  [PAIRED]    $device_name ($device_mac)"
        fi
    done
    echo ""
}

# Function to connect to a Bluetooth device by its name
# Usage: btconnect <DeviceName>
btconnect() {
    if [ -z "$1" ]; then
        echo "Usage: btconnect <DeviceName>"
        echo "Example: btconnect MyHeadphones"
        return 1
    fi

    local deviceName="$1"
    local deviceMac=""

    echo "Searching for device: '$deviceName'..."

    # Scan for devices to ensure it's discoverable, then stop scanning
    # This helps in finding devices that might not be in the paired list yet or are not currently visible.
    echo "Initiating scan (may take a few seconds)..."
    bluetoothctl scan on &
    SCAN_PID=$!
    sleep 5 # Give it some time to discover devices
    bluetoothctl scan off > /dev/null 2>&1
    kill $SCAN_PID > /dev/null 2>&1
    wait $SCAN_PID 2>/dev/null

    # Try to find the device by name from the list of devices
    deviceMac=$(bluetoothctl devices | grep -i "$deviceName" | awk '{print $2}' | head -n 1)

    if [ -z "$deviceMac" ]; then
        # If not found in 'devices', try 'paired-devices'
        deviceMac=$(bluetoothctl paired-devices | grep -i "$deviceName" | awk '{print $2}' | head -n 1)
    fi

    if [ -z "$deviceMac" ]; then
        echo "Error: Device '$deviceName' not found or not discoverable."
        echo "Please ensure the device is on and in pairing mode if it's new."
        return 1
    fi

    echo "Found '$deviceName' with MAC address: $deviceMac"

    # Attempt to pair if not already paired (this command handles already paired devices gracefully)
    echo "Attempting to pair with $deviceName..."
    bluetoothctl pair "$deviceMac"

    # Attempt to trust the device (important for auto-reconnect)
    echo "Attempting to trust $deviceName..."
    bluetoothctl trust "$deviceMac"

    # Attempt to connect
    echo "Attempting to connect to $deviceName..."
    if bluetoothctl connect "$deviceMac"; then
        echo "Successfully connected to '$deviceName'."
    else
        echo "Failed to connect to '$deviceName'."
        echo "You might need to manually connect or ensure the device is ready."
        return 1
    fi
}
