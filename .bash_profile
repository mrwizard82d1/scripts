# (Bash) Shell startup script.


# Configure the editor for svn, git and hg.
if [ $TERM = cygwin -o $TERM = xterm-256color ]
then
    export SVN_EDITOR=$(cygpath -w /cygdrive/c/PROGRA~2/JED/bin/wjed.exe)
#    export GIT_EDITOR=\'$(cygpath -wa /cygdrive/c/PROGRA~2/JED/bin/wjed.exe)\'
#    export EDITOR=$(cygpath -w /cygdrive/c/PROGRA~2/JED/bin/wjed.exe)
    export GIT_EDITOR=vim.bat
    export EDITOR=/cygdrive/c/Windows/gvim.bat
elif [ $TERM = xterm ]
then
    export GIT_EDITOR=xjed
    export EDITOR=xjed:
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


# proml


