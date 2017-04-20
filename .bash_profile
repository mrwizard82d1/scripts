# (Bash) Shell startup script.

SYS_NAME=$(uname -s)
if [ $SYS_NAME == "Darwin" ]; then
    export SVN_EDITOR="mvim -f --nomru"
    export GIT_EDITOR="mvim -f --nomru"

	# Support node version manager using brew (not supported by original
	# nvm authors)
	export NVM_DIR="$HOME/.nvm"
	. "/usr/local/opt/nvm/nvm.sh"
elif [ ${SYS_NAME:0:5} == "Linux" ]; then
    # Do something under Linux platform
    :
elif [ ${SYS_NAME:0:9} == "CYGWIN_NT" ]; then
    # Do something under Cygwin platform
    export SVN_EDITOR=$(cygpath -w /cygdrive/c/Windows/gvim.bat)
    export GIT_EDITOR=\'$(cygpath -wa /cygdrive/c/Windows/gvim.bat)\'
    export EDITOR=$(cygpath -w /cygdrive/c/Windows/gvim.bat)
elif [ ${SYS_NAME:0:15} == "MINGW64_NT-10.0" ]; then
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
