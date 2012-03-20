PLATFORM=`uname`

case $PLATFORM in 
  'Darwin')
  # Path to your oh-my-zsh configuration.
  ZSH=/Users/cabeca/.oh-my-zsh
  # Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
  # Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
  # Example format: plugins=(rails git textmate ruby lighthouse)
  plugins=(git osx knife gem rvm)
  export EDITOR="subl -w"
  ;;
  'Linux')
  ZSH=/home/cabeca/.oh-my-zsh
  plugins=(git knife gem rvm)
  export EDITOR="nano -w"
  ;;
esac

  # Set name of the theme to load.
  # Look in ~/.oh-my-zsh/themes/
  # Optionally, if you set this to "random", it'll load a random theme each
  # time that oh-my-zsh is loaded.
  #ZSH_THEME="cabeca"

  # Example aliases
  # alias zshconfig="mate ~/.zshrc"
  # alias ohmyzsh="mate ~/.oh-my-zsh"

  # Set to this to use case-sensitive completion
  # CASE_SENSITIVE="true"

  # Comment this out to disable weekly auto-update checks
  # DISABLE_AUTO_UPDATE="true"

  # Uncomment following line if you want to disable colors in ls
  # DISABLE_LS_COLORS="true"

  # Uncomment following line if you want to disable autosetting terminal title.
  # DISABLE_AUTO_TITLE="true"

  # Uncomment following line if you want red dots to be displayed while waiting for completion
  COMPLETION_WAITING_DOTS="true"

  source $ZSH/oh-my-zsh.sh


case $PLATFORM in 
  'Darwin')
  # Customize to your needs...
  source "/Users/cabeca/.dotfiles/cabeca.zsh-theme"

  bindkey '\e.' insert-last-word
  bindkey -s '^s^s' "tab ssh -A suporte.ist.utl.pt\n"
  bindkey -s '^s^b' "tab ssh -A cabeca.ist.utl.pt\n"

  alias tssh='tab ssh -A'


  [[ -s "/Users/cabeca/.rvm/scripts/rvm" ]] && source "/Users/cabeca/.rvm/scripts/rvm"  # This loads RVM into a shell session.

  alias sudosu='sudo su -m'

  ;;
  'Linux')
  # Customize to your needs...
  source "/home/cabeca/.dotfiles/cabeca.zsh-theme"

  bindkey '\e.' insert-last-word

  alias sudosu='sudo su -m -c "ZDOTDIR=/home/cabeca zsh"'
  ;;
esac

LANGUAGE="en_US.UTF-8"