# (Bash) Shell startup script.
(set -o igncr) 2>/dev/null && set -o igncr; # this comment is required

MINGW_SYS_NAME="MINGW32_NT-10.0-WOW"
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
    # Ignore CR
    export SHELLOPTS
    set -o igncr

    # Set up editors
    export SVN_EDITOR=c:/cygwin64/bin/vi.exe
    export GIT_EDITOR=c:/cygwin64/bin/vi.exe
    export EDITOR=c:/cygwin64/bin/vi.exe
    export PAGER="less -R"
elif [ ${SYS_NAME:0:15} == $MINGW_SYS_NAME ]; then
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
