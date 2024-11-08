export PATH="$JAVA_HOME/bin:$PATH"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-17.jdk/Contents/Home"
export HOME="/Users/jcjustin"
export ANDROID_HOME="/Users/jcjustin/Library/Android/sdk"
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"
export PGDATA="/opt/homebrew/var/postgresql@15"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/jcjustin/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/jcjustin/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/jcjustin/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/jcjustin/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

source /Users/jcjustin/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source /Users/jcjustin/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /Users/jcjustin/.zsh/zsh-vi-mode/zsh-vi-mode.zsh

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
alias java11="/Library/Java/JavaVirtualMachines/zulu-11.jdk/Contents/Home/bin/java"
alias javac11="/Library/Java/JavaVirtualMachines/zulu-11.jdk/Contents/Home/bin/javac"
alias vim="nvim"

source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh
chruby ruby-3.2.2

