source ~/.zinit/bin/zinit.zsh


## Oh My Zsh Setting
# ZSH_THEME="robbyrussell"

## Zinit Setting
# Must Load OMZ Git library
zinit snippet OMZL::git.zsh

# Load Git plugin from OMZ
zinit snippet OMZP::git
zinit cdclear -q # <- forget completions provided up to this moment

setopt promptsubst

# Load Prompt 加载omz的主题
zinit snippet OMZT::kennethreitz



# 加载 OMZ 的 git 插件
zinit ice wait"2" lucid
zinit snippet OMZ::plugins/git/git.plugin.zsh
zinit ice wait"2" lucid
zinit snippet OMZ::lib/clipboard.zsh
zinit ice wait"2" lucid
zinit snippet OMZ::lib/completion.zsh
zinit ice wait"2" lucid
zinit snippet OMZ::lib/history.zsh
zinit ice wait"2" lucid
zinit snippet OMZ::lib/key-bindings.zsh
zinit ice wait"2" lucid
zinit snippet OMZ::lib/theme-and-appearance.zsh
# 还有一个cd补全插件 incr


# svn 修饰词，表示下一行的 URI 需要使用 SVN 协议加载。此时 zinit 会使用 SVN 协议下载整个目录，自动识别并加载需要的文件。
zinit ice svn 
zinit light zsh-users/zsh-autosuggestions
zinit ice svn wait lucid
zinit light zsh-users/zsh-syntax-highlighting
zinit ice svn wait lucid
zinit snippet OMZ::plugins/autojump
# Path to your oh-my-zsh installation.
export ZSH="/Users/chegopy/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes


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

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# p>   
# under VCS as dirty. This makes repository status check for large repositories
# p>   
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
plugins=(
# git
# # autojump
# zsh-autosuggestions
# zsh-syntax-highlighting
)

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
alias cls='clear'
alias ll='ls -l'
alias lla='ls -al'
alias la='ls -a'
alias vi='vim'
alias javac='javac -J-Dfile.encoding=utf-8'
alias grep='grep --color=auto'
alias -s py=vi
alias -s js=vi
alias -s c=vi
alias -s java=vi
alias -s txt=vi
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
source ~/.bash_profile

# # .zshrc
# autoload promptinit; promptinit
# # optionally define some options
# PURE_CMD_MAX_EXEC_TIME=10

# # change the path color
# zstyle :prompt:pure:path color white

# # change the color for both `prompt:success` and `prompt:error`
# zstyle ':prompt:pure:prompt:*' color cyan

# # turn on git stash status
# zstyle :prompt:pure:git:stash show yes

# prompt pure




# source /Users/chegopy/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh




# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/chegopy/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/chegopy/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/chegopy/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/chegopy/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"



# Codi
# Usage: codi [filetype] [filename]
codi() {
  local syntax="${1:-python}"
  shift
  vim -c \
    "let g:startify_disable_at_vimenter = 1 |\
    set bt=nofile ls=0 noru nonu nornu |\
    hi ColorColumn ctermbg=NONE |\
    hi VertSplit ctermbg=NONE |\
    hi NonText ctermfg=0 |\
    Codi $syntax" "$@"
}

