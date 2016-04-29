# (Bash) Shell startup script.

if [ "$(uname)" == "Darwin" ]; then
    # Do something under Mac OS X platform
    :
    export SVN_EDITOR="mvim -f --nomru"
    export GIT_EDITOR="mvim -f --nomru"
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    # Do something under Linux platform
    :
elif [ "$(expr substr $(uname -s) 1 9)" == "CYGWIN_NT" ]; then
    # Do something under Cygwin platform
    export SVN_EDITOR=$(cygpath -w /cygdrive/c/Windows/gvim.bat)
    export GIT_EDITOR=\'$(cygpath -wa /cygdrive/c/Windows/gvim.bat)\'
    export EDITOR=$(cygpath -w /cygdrive/c/Windows/gvim.bat)
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
    # Do something under Windows NT platform
    # I need to install rlwrap on Windows - but not for now.
    export SVN_EDITOR='cmd //c /c/Windows/gvim.bat'
    # export GIT_EDITOR='cmd //c /c/Windows/gvim.bat -f'
fi


# Configure emacs screen sizes
export EMACS_SIZE=80x50
case `hostname` in
    bullwinkle) EMACS_SIZE=80x48;;
    Ginny-PC) EMACS_SIZE=80x40;;
    swilliams-PC) EMACS_SIZE=80x43;;
esac


# Include ~/.bashrc if available.
[[ -r ~/.bashrc ]] && source ~/.bashrc
