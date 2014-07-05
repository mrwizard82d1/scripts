# /etc/bashrc

# User-specific functions and aliases.

# Function to change prompt. Shamelessly "stolen" from CentOS /etc/bashrc.
# are we an interactive shell?
if [ "$PS1" ]; then
  if [ -z "$PROMPT_COMMAND" ]; then
    case $TERM in
    xterm*)
        if [ -e /etc/sysconfig/bash-prompt-xterm ]; then
            PROMPT_COMMAND=/etc/sysconfig/bash-prompt-xterm
        else
            PROMPT_COMMAND='printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/~}"'
        fi
        ;;
    screen)
        if [ -e /etc/sysconfig/bash-prompt-screen ]; then
            PROMPT_COMMAND=/etc/sysconfig/bash-prompt-screen
        else
            PROMPT_COMMAND='printf "\033]0;%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/~}"'
        fi
        ;;
    *)
        [ -e /etc/sysconfig/bash-prompt-default ] && PROMPT_COMMAND=/etc/sysconfig/bash-prompt-default
        ;;
      esac
  fi
  # Turn on checkwinsize
  shopt -s checkwinsize
  [ "$PS1" = "\\s-\\v\\\$ " ] && PS1="[\u@\h \W]\\$ "
  # You might want to have e.g. tty in prompt (e.g. more virtual machines)
  # and console windows
  # If you want to do so, just add e.g.
  # if [ "$PS1" ]; then
  #   PS1="[\u@\h:\l \W]\\$ "
  # fi
  # to your custom modification shell script in /etc/profile.d/ directory
fi

# Function to change title bar
# Shamelessly "stolen" from 
# http://tldp.org/HOWTO/Bash-Prompt-HOWTO/xterm-title-bar-manipulations.html
function proml
{
    case $TERM in
	xterm*)
            local TITLEBAR='\[\033]0;\u@\h: \W\007\]'
            ;;
	*)
            local TITLEBAR=''
            ;;
    esac

    PS1="${TITLEBAR}\
[\u@\h: \W]\
\$ "
    PS2='> '
    PS4='+ '
}

# Utility functions
function latest()
{
    ls -ltd ${1} | head ${2}
}

function newer()
{
    find ${1} -name '*' -newer ${1}.tgz
}

function tarit()
{
    tar -zcf ${1}.tgz --exclude=.svn ${1}
}

function untarit()
{
    tar -zxf ${1}.tgz
}

function wtarit()
{
    tar -zcf ${1}-$(hostname).tgz --exclude=.svn ${1}
}

# Quickly change to directories of interest
function software()
{
    cd ~/professional/software/${1}
}

function projects()
{
    cd ~/professional/projects/${1}
}

function software()
{
    cd ~/professional/software/${1}
}

function sts()
{
    cd ~/sharpen-the-saw/${1}
}

function whitepapers()
{
    cd ~/professional/whitepapers/${1}
}

# Quickly change to work directories

function nwing() 
{
    cd ~/work/projects/nwing/${1}
}

function src() 
{
    cd ~/work/src/${1}
}

function supernova() 
{
    cd ~/work/projects/supernova/${1}
}

function test() 
{
    cd ~/work/test/${1}
}


function work_proj() 
{
    cd ~/work/test/projects/${1}
}


# Aliases
if [ $TERM = cygwin ]
then
    alias ant='${ANT_HOME}/bin/ant.bat'
    alias aspell='/cygdrive/c/PROGRA~1/Aspell/bin/aspell.exe'
    alias clj='clj-151'
    alias clj-151='java -cp $(cygpath -wa ~/professional/software/languages/clojure/clojure-1.5.1/clojure-1.5.1.jar) clojure.main'
    alias clj12='java -cp $(cygpath -w ~/professional/software/languages/clojure/clojure-1.2.0/clojure.jar)\;$(cygpath -w ~/professional/software/languages/clojure/clojure-contrib-1.2.0/target/clojure-contrib-1.2.0.jar) clojure.main'
    alias clj-clr='clj-clr-14'
    alias clj-clr-14=~/professional/software/languages/clojure-clr/Debug-4.0/Clojure.Main.exe
    alias clj-clr-151=~/professional/software/languages/clojure-clr/Debug-1.5.1-4.0/Clojure.Main.exe
    alias cucumber='/cygdrive/c/Ruby193/bin/cucumber.bat'
    alias doxygen='/cygdrive/c/PROGRA~1/doxygen/bin/doxygen.exe'
    alias eclipse='/cygdrive/c/eclipse/eclipse.exe'
    alias eclipse_j2ee='/cygdrive/c/eclipse-j2ee/eclipse.exe'
    alias eject='~/professional/software/system/drivetools/EjectMedia.exe'
    alias elixir='~/professional/software/languages/elixir/v0.14.2/bin/elixir.bat'
    alias elixirc='~/professional/software/languages/elixir/v0.14.2/bin/elixirc.bat'
    alias emacs="/cygdrive/d/emacs-24.3/bin/runemacs.exe -geometry $EMACS_SIZE"
    alias erl='/cygdrive/c/PROGRA~1/erl6.1/bin/erl.exe -smp'
    alias erlc='/cygdrive/c/PROGRA~1/erl6.1/bin/erlc.exe'
    alias escript='/cygdrive/c/PROGRA~1/erl6.1/bin/escript.exe'
    alias find_grep='/cygdrive/c/Python33/python.exe $(cygpath -w ~/professional/projects/pyutils/find_grep.py)'
    alias gem='/cygdrive/c/Ruby193/bin/gem.bat'
    alias inst_profile='cp .bash_profile ~/.bash_profile'
    alias jed='/cygdrive/c/PROGRA~2/JED/bin/jed.exe'
    alias hg='/cygdrive/c/PROGRA~1/TortoiseHg/hg.exe'
    alias icucumber='/cygdrive/c/PROGRA~1/IRONRU~1.1/bin/cucumber.bat'
    alias iex='~/professional/software/languages/elixir/v0.14.2/bin/iex.bat'
    alias igem='/cygdrive/c/PROGRA~1/IRONRU~1.1/bin/igem.bat'
    alias ilettuce='ipy $(cygpath -wd /cygdrive/c/PROGRA~1/IronPython\ 2.7/Lib/site-packages/lettuce/lettuce_cli.py)'
    alias iirb='/cygdrive/c/PROGRA~1/IRONRU~1.1/bin/iirb.bat'
    alias inosetests='ipy $(cygpath -wd /cygdrive/c/PROGRA~1/IronPython\ 2.7/Lib/site-packages/nose/core.py)'
    alias ipy='ipy27'
    alias ipy27='/cygdrive/c/PROGRA~2/IronPython\ 2.7/ipy64.exe'
    alias ipy27_32='/cygdrive/c/PROGRA~2/IronPython\ 2.7/ipy.exe'
    alias ipycc='ipycc27'
    alias ipycc27='/cygdrive/c/PROGRA~2/IronPython\ 2.7/ipy64.exe -X:TabCompletion -X:ColorfulConsole'
    alias ipycc27_32='/cygdrive/c/PROGRA~2/IronPython\ 2.7/ipy.exe -X:TabCompletion -X:ColorfulConsole'
    alias ir='/cygdrive/c/PROGRA~1/IRONRU~1.1/bin/ir.exe'
    alias irake='/cygdrive/c/PROGRA~1/IRONRU~1.1/bin/rake.bat'
    alias irb='/cygdrive/c/Ruby193/bin/irb.bat'
    alias jar='/cygdrive/c/PROGRA~1/Java/jdk1.7.0_51/bin/jar.exe'
    alias java='/cygdrive/c/PROGRA~1/Java/jdk1.7.0_51/bin/java.exe'
    alias javac='/cygdrive/c/PROGRA~1/Java/jdk1.7.0_51/bin/javac.exe'
    alias lein='~/.lein/bin/lein.bat'
    alias lettuce='/cygdrive/c/Python27/Scripts/lettuce.exe'
    alias list_usb='~/professional/software/system/drivetools/ListUsbDrives.exe'
    alias manage_mapped_drives='/cygdrive/c/Python33/python.exe $(cygpath -w ~/professional/projects/pyutils/manage_mapped_drives.py)'
    alias mysql='/cygdrive/c/PROGRA~1/MySQL/MySQL\ Server\ 5.6/bin/mysql.exe'
    alias name_2_ip_addr='ipy $(cygpath -w ~/professional/projects/ipyutils/name_to_ip_addr.py)'
    alias nant='/usr/local/bin/nant-0.85/bin/NAnt.exe'
    alias nosetests=/cygdrive/c/Python27/Scripts/nosetests.exe
    alias path_as_list='python $(cygpath -w ~/professional/projects/pyutils/path2list.py)'
    alias path2svnurl='python $(cygpath -w ~/professional/projects/pyutils/dirname_to_svn_url.py)'
    alias pn='/cygdrive/c/PROGRA~2/PROGRA~1/pn.exe'
    alias pip='/cygdrive/c/Python27/Scripts/pip'
    alias python='python27'
    alias python27='/cygdrive/c/Python27/python.exe'
    alias python32='/cygdrive/c/Python32/python.exe'
    alias python33='/cygdrive/c/Python33/python.exe'
    alias R='/cygdrive/c/PROGRA~1/R/R-3.0.2/bin/x64/Rgui.exe'
    alias rspec='/cygdrive/c/Ruby193/bin/rspec.bat'
    alias Rterm='/cygdrive/c/PROGRA~1/R/R-3.0.2/bin/x64/Rterm.exe'
    alias rm_usb='~/professional/software/system/drivetools/RemoveDrive.exe'
    alias roundup_admin='python -c "from roundup.scripts.roundup_admin import run; run()"'
    alias roundup_server='python -c "from roundup.scripts.roundup_server import run; run()"'
    alias save_clipboard_image='ipy $(cygpath -w ~/professional/projects/ipyutils/save_clipboard_image.py)'
    alias werl='/cygdrive/c/PROGRA~1/erl6.1/bin/werl.exe'
    alias wjed='/cygdrive/c/PROGRA~2/JED/bin/wjed.exe'
fi

