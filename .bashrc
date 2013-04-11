# Function to change title bar
# Shamelessly "stolen" from 
# http://tldp.org/HOWTO/Bash-Prompt-HOWTO/xterm-title-bar-manipulations.html
function proml
{
    case $TERM in
	xterm*)
            local TITLEBAR='\[\033]0;\u@\h:\W\007\]'
            ;;
	*)
            local TITLEBAR=''
            ;;
    esac

    PS1="${TITLEBAR}\
[\$(date +%H%M)]\
[\u@\h:\W]\
\$ "
    PS2='> '
    PS4='+ '
}