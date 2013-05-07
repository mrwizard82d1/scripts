# (Bash) Shell startup script.


# Include ~/.bashrc if available.
[[ -r ~/.bashrc ]] && source ~/.bashrc


# Configure the editor for svn, git and hg.
if [ $TERM = cygwin ]
then
    export SVN_EDITOR=$(cygpath -w /cygdrive/c/PROGRA~1/JED/bin/wjed.exe)
    export GIT_EDITOR=\'$(cygpath -wa /cygdrive/c/PROGRA~1/JED/bin/wjed.exe)\'
    export EDITOR=$(cygpath -w /cygdrive/c/PROGRA~1/JED/bin/wjed.exe)
elif [ $TERM = xterm ]
then
    export GIT_EDITOR=xjed
    export EDITOR=xjed
fi


# Configure emacs screen sizes
export EMACS_SIZE=80x50
case `hostname` in
    bullwinkle) EMACS_SIZE=80x48;;
    Ginny-PC) EMACS_SIZE=80x40;;
    swilliams-PC) EMACS_SIZE=80x43;;
esac


# proml

