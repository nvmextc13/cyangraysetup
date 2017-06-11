# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# set root as zsh, and copy settings from user
#chsh -s /bin/zsh root
#cp $home/.oh-my-zsh /root/.om-my-zsh
#cp $home/.zshrc /root/.zshrc
# or just run zshtoroot if setup in /home/bin

# Path to your oh-my-zsh installation.
  export ZSH=/home/me/.oh-my-zsh

  export TERM="xterm-256color"


# awesome powerline fonts
# https://github.com/gabrielelana/awesome-terminal-fonts
# https://github.com/chris-murray/powerlevel9k-custom#option-2-install-awesome-powerline-fonts
#https://github.com/bhilburn/powerlevel9k/wiki/Install-Instructions#step-2-install-a-powerline-font
  POWERLEVEL9K_MODE='awesome-fontconfig'

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/cyangray"
#ZSH_THEME="agnoster2"
#ZSH_THEME="powerline"
#ZSH_THEME="random"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git git-extras history command-not-found)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# powerlevel9k
# https://github.com/bhilburn/powerlevel9k/blob/master/README.md#available-prompt-segments

# config
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(ssh context dir rbenv vcs custom_end)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)

POWERLEVEL9K_CUSTOM_END='print_icon "NEWLINE_ICON"'
POWERLEVEL9K_CUSTOM_END_FOREGROUND='032'
POWERLEVEL9K_CUSTOM_END_BACKGROUND='234'

# user @ machine ..
POWERLEVEL9K_CONTEXT_TEMPLATE="\uf304  \uf105 %n"

#POWERLEVEL9K_PROMPT_ON_NEWLINE=true
#POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
#POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="↱"
#POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="↳ "

#line after command
#POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
#POWERLEVEL9K_SHORTEN_DELIMITER=".."
#POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right or truncate_middle"

#POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S \uE868  %d.%m.%y}"

# powerlevel9k style
#https://github.com/bhilburn/powerlevel9k/wiki/Stylizing-Your-Prompt
#for code ({000..255}) print -P -- "$code: %F{$code}This is how your text would look like%f"

###terminal styling

# everything below here is explanatory, folder text color declared at the end, seperator color at the beginning
POWERLEVEL9K_DIR_PATH_SEPARATOR="$(print_icon 'LEFT_SUBSEGMENT_SEPARATOR') "
# %F{white} 

# segment/sub segment separators
#POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='\uE0B0'				# 
#POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR='\uE0B2'				# 
#POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR='\uE0B1'			# 
#POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR='\uE0B3'			# 

# use "get_icon_names" to see all icons
# *****  Separators and Icons  *****
#POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR="\ue0bc"
#POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR="\ue0c6"
#POWERLEVEL9K_LEFT_SEGMENT_END_SEPARATOR=""
#POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=""
#POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=""

# *****  General Icons  *****
#POWERLEVEL9K_OK_ICON=""
#POWERLEVEL9K_FAIL_ICON=""
#POWERLEVEL9K_CARRIAGE_RETURN_ICON=""
#POWERLEVEL9K_TODO_ICON=""

#first part, comp name
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='234'
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='032'
#POWERLEVEL9K_CONTEXT_VISUAL_IDENTIFIER_COLOR=""

#POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND=""
#POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND=""
#POWERLEVEL9K_CONTEXT_VISUAL_IDENTIFIER_COLOR=""

#folder icon when AT home
POWERLEVEL9K_DIR_HOME_BACKGROUND='234'
POWERLEVEL9K_DIR_HOME_FOREGROUND='032'
#POWERLEVEL9K_DIR_HOME_VISUAL_IDENTIFIER_COLOR=""

#when inside home folder, foreground controls folder icon, background controls everything?
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='032'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='white' 
#POWERLEVEL9K_DIR_HOME_SUBFOLDER_VISUAL_IDENTIFIER_COLOR=""

#folder structure and folder icon, when outside of main folder
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='238'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='white'
#POWERLEVEL9K_DIR_DEFAULT_VISUAL_IDENTIFIER_COLOR=""

POWERLEVEL9K_TIME_BACKGROUND='234'
POWERLEVEL9K_TIME_FOREGROUND='032'


# *****  dir icons *****
POWERLEVEL9K_HOME_ICON="\uF015 "
POWERLEVEL9K_HOME_SUB_ICON="\uF07C "
POWERLEVEL9K_FOLDER_ICON="\uF115 "

# *****  dir_writeable  *****
#POWERLEVEL9K_LOCK_ICON=""

# *****  date  *****
#POWERLEVEL9K_DATE_BACKGROUND=""
#POWERLEVEL9K_DATE_FOREGROUND=""
#POWERLEVEL9K_DATE_VISUAL_IDENTIFIER_COLOR=""

# *****  dir_writeable  *****
#POWERLEVEL9K_DIR_WRITEABLE_BACKGROUND=""
#POWERLEVEL9K_DIR_WRITEABLE_FOREGROUND=""
#POWERLEVEL9K_DIR_WRITEABLE_VISUAL_IDENTIFIER_COLOR=""

# Powerline
if [[ -r /usr/share/powerline/bindings/zsh/powerline.zsh ]]; then
    source /usr/share/powerline/bindings/zsh/powerline.zsh
fi

neofetch

# must be at the end of file
source /home/me/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh