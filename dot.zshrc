bindkey -v
source ~/.profile
source ~/src/pkg/zgen/zgen.zsh

if ! zgen saved; then
  echo "running zgen"

  zgen oh-my-zsh
  zgen oh-my-zsh plugins/extract
  zgen oh-my-zsh plugins/pj
  zgen oh-my-zsh plugins/encode64
  zgen oh-my-zsh plugins/urltools

  zgen load zsh-users/zsh-syntax-highlighting
  zgen load zsh-users/zaw
  zgen load zsh-users/zsh-completions src

  zgen save
fi
source ~/.zsh/koehr.theme.zsh
setopt HIST_IGNORE_DUPS

COMPLETION_WAITING_DOTS="true"
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
ZSH_HIGHLIGHT_PATTERNS+=('rm -fr*' 'fg=white,bold,bg=red')
ZSH_HIGHLIGHT_PATTERNS+=('rm -rf*' 'fg=white,bold,bg=red')

PROJECT_PATHS=(~/src ~/src/*)
