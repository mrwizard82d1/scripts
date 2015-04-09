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

function src() 
{
    cd /cygdrive/c/src/${1}
}

function rightangle() 
{
    cd ~/work/projects/rightangle/${1}
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
if [ $TERM = cygwin -o $TERM = xterm-256color ]
then
    alias ant='${ANT_HOME}/bin/ant.bat'
    alias aspell='/cygdrive/c/PROGRA~1/Aspell/bin/aspell.exe'
    alias clj='clj-160'
    alias clj-160='java -cp $(cygpath -wa ~/professional/software/languages/clojure/clojure-1.6.0/clojure-1.6.0.jar) clojure.main'
    alias clj-clr='clj-clr-160'
    alias clj-clr-160="~/professional/software/languages/clojure-clr/Release\ 4.0/Clojure.Main.exe"
    alias clj-clr-160-dbg="~/professional/software/languages/clojure-clr/Debug\ 4.0/Clojure.Main.exe"
    alias cucumber='/cygdrive/c/Ruby21-x64/bin/cucumber.bat'
    alias doxygen='/cygdrive/c/PROGRA~1/doxygen/bin/doxygen.exe'
    alias eclipse='/cygdrive/c/eclipse/eclipse.exe'
    alias eclipse_j2ee='/cygdrive/c/eclipse-j2ee/eclipse.exe'
    alias eject='~/professional/software/system/drivetools/EjectMedia.exe'
    alias elixir='/cygdrive/c/PROGRA~2/Elixir/bin/elixir.bat'
    alias elixirc='/cygdrive/c/PROGRA~2/Elixir/bin/elixirc.bat'
    alias emacs="/cygdrive/c/emacs-24.4/bin/runemacs.exe -geometry $EMACS_SIZE"
    alias erl='/cygdrive/c/PROGRA~1/erl6.2/bin/erl.exe -smp'
    alias erlc='/cygdrive/c/PROGRA~1/erl6.2/bin/erlc.exe'
    alias escript='/cygdrive/c/PROGRA~1/erl6.2/bin/escript.exe'
    alias find_grep='/cygdrive/c/Python34/python.exe $(cygpath -w ~/professional/projects/pyutils/find_grep.py)'
    alias gem='/cygdrive/c/Ruby21-x64/bin/gem.bat'
    alias inst_profile='cp .bash_profile ~/.bash_profile'
    alias jed='/cygdrive/c/PROGRA~2/JED/bin/jed.exe'
    alias gvim='gvim.bat'
    alias hg='/cygdrive/c/PROGRA~1/TortoiseHg/hg.exe'
    alias icucumber='/cygdrive/c/PROGRA~1/IRONRU~1.1/bin/cucumber.bat'
    alias iex='/cygdrive/c/PROGRA~2/Elixir/bin/iex.bat'
    alias iexw='/cygdrive/c/PROGRA~2/Elixir/bin/iex.bat --werl'
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
    alias irb='/cygdrive/c/Ruby21-x64/bin/irb.bat'
    alias jar='/cygdrive/c/PROGRA~1/Java/jdk1.8.0_40/bin/jar.exe'
    alias java='/cygdrive/c/PROGRA~1/Java/jdk1.8.0_40/bin/java.exe'
    alias javac='/cygdrive/c/PROGRA~1/Java/jdk1.8.0_40/bin/javac.exe'
    alias lein='~/.lein/bin/lein.bat'
    alias lettuce='/cygdrive/c/Python27/Scripts/lettuce.exe'
    alias lighttable=~/professional/software/devtools/light_table/LightTable/LightTable.exe
    alias list_usb='~/professional/software/system/drivetools/ListUsbDrives.exe'
    alias manage_mapped_drives='/cygdrive/c/Python34/python.exe $(cygpath -w ~/professional/projects/pyutils/manage_mapped_drives.py)'
	alias mix="/cygdrive/c/PROGRA~2/Elixir/bin/mix.bat"
    alias mysql='/cygdrive/c/PROGRA~1/MySQL/MySQL\ Server\ 5.6/bin/mysql.exe'
    alias name_2_ip_addr='ipy $(cygpath -w ~/professional/projects/ipyutils/name_to_ip_addr.py)'
    alias nant='/usr/local/bin/nant-0.85/bin/NAnt.exe'
    alias nosetests=/cygdrive/c/Python27/Scripts/nosetests.exe
    alias npp='/cygdrive/c/PROGRA~2/NOTEPA~1/notepad++.exe'
    alias path_as_list='python $(cygpath -w ~/professional/projects/pyutils/path2list.py)'
    alias path2svnurl='python $(cygpath -w ~/professional/projects/pyutils/dirname_to_svn_url.py)'
    alias pn='/cygdrive/c/PROGRA~2/PROGRA~1/pn.exe'
    alias pip='/cygdrive/c/Python27/Scripts/pip'
    alias python='python27'
    alias python27='/cygdrive/c/Python27/python.exe'
    alias python34='/cygdrive/c/Python34/python.exe'
    alias R='/cygdrive/c/PROGRA~1/R/R-3.0.2/bin/x64/Rgui.exe'
    alias ra12='/cygdrive/c/PROGRA~2/SolArc/RightAngle.NET/12.0/Client/RightAngle.exe'
    alias rm_gen_bin='python $(cygpath -wa ~/professional/projects/pyutils/rm_gen_bin.py)'
    alias rm_usb='~/professional/software/system/drivetools/RemoveDrive.exe'
    alias roundup_admin='python -c "from roundup.scripts.roundup_admin import run; run()"'
    alias roundup_server='python -c "from roundup.scripts.roundup_server import run; run()"'
    alias rspec='/cygdrive/c/Ruby21-x64/bin/rspec.bat'
    alias Rterm='/cygdrive/c/PROGRA~1/R/R-3.0.2/bin/x64/Rterm.exe'
#    alias ruby='/cygdrive/c/Ruby21-x64/bin/ruby.exe'
    alias save_clipboard_image='ipy $(cygpath -w ~/professional/projects/ipyutils/save_clipboard_image.py)'
    alias svn='/cygdrive/c/Program\ Files/TortoiseSVN/bin/svn.exe'
    alias vim='vim.bat'
    alias vs_2010='cmd /c "start cmd /k $(cygpath -wa /cygdrive/c/PROGRA~2/MICROS~2.0/VC/vcvarsall.bat) x86"'
    alias vs_2012='cmd /c "start cmd /k $(cygpath -wa /cygdrive/c/PROGRA~2/MICROS~3.0/Common7/Tools/VsDevCmd.bat)"'
    alias werl='/cygdrive/c/PROGRA~1/erl6.2/bin/werl.exe'
    alias wjed='/cygdrive/c/PROGRA~2/JED/bin/wjed.exe'
fi

