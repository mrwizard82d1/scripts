# /etc/bashrc

set -o vi

# User-specific functions and aliases.

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

function software()
{
    cd ~/professional/software/${1}
}

# Quickly change to directories of interest
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

SYS_NAME=$(uname -s)
if [ $SYS_NAME == "Darwin" ]; then
    # Do something under Mac OS X platform
    :
elif [ ${SYS_NAME:0:5} == "Linux" ]; then
    # Do something under Linux platform
    :
elif [ ${SYS_NAME:0:9} == "CYGWIN_NT" ]; then
	# Quickly change to work directories
	function src()
	{
		cd /cygdrive/c/src/${1}
	}
elif [ ${SYS_NAME:0:15} == "MINGW64_NT-10.0" ]; then
	function src()
	{
		cd /c/src/${1}
	}
fi

# Functions common to Cygwin and MWING32
if [[ ${SYS_NAME:7:2} = "NT" || ${SYS_NAME:8:2} = "NT" ]] ; then
	function work_proj()
	{
		cd ~/work/projects/${1}
	}
fi 

# Configure emacs screen sizes
export EMACS_SIZE=80x50
case `hostname` in
    bullwinkle) EMACS_SIZE=80x48;;
    Ginny-PC) EMACS_SIZE=80x40;;
    swilliams-PC) EMACS_SIZE=80x43;;
esac


# Aliases
alias ant='${ANT_HOME}/bin/ant.bat'
if [ $SYS_NAME == "Darwin" ]; then
    # Do something under Mac OS X platform
    :
elif [ ${SYS_NAME:0:5} == "Linux" ]; then
    # Do something under Linux platform
    :
elif [ ${SYS_NAME:0:9} == "CYGWIN_NT" ]; then
    # Do something under Cygwin platform
    alias atom='/cygdrive/c/Users/ljones/AppData/Local/atom/bin/atom.cmd'
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
    alias emacs='/cygdrive/c/emacs-24.4/bin/emacsclientw.exe -na '\''C:\emacs-24.4\bin\runemacs.exe'\'' -c'
    alias emacs_old="/cygdrive/c/emacs-24.4/bin/runemacs.exe -geometry $EMACS_SIZE"
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
    alias jar='/cygdrive/c/PROGRA~1/Java/jdk1.8.0_45/bin/jar.exe'
    alias java='/cygdrive/c/PROGRA~1/Java/jdk1.8.0_45/bin/java.exe'
    alias javac='/cygdrive/c/PROGRA~1/Java/jdk1.8.0_45/bin/javac.exe'
    alias lein='~/.lein/bin/lein.bat'
    alias lettuce='/cygdrive/c/Python27/Scripts/lettuce.exe'
    alias lighttable=~/professional/software/devtools/light_table/LightTable/LightTable.exe
    alias list_usb='~/professional/software/system/drivetools/ListUsbDrives.exe'
    alias manage_mapped_drives='/cygdrive/c/Python34/python.exe $(cygpath -w ~/professional/projects/pyutils/manage_mapped_drives.py)'
	alias mix="/cygdrive/c/PROGRA~2/Elixir/bin/mix.bat"
    alias mysql='/cygdrive/c/PROGRA~1/MySQL/MySQL\ Server\ 5.6/bin/mysql.exe'
    alias name_2_ip_addr='ipy $(cygpath -w ~/professional/projects/ipyutils/name_to_ip_addr.py)'
    alias nant=/cygdrive/c/PROGRA~2/nant-0.92/bin/nant
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
    alias st='/cygdrive/c/PROGRA~2/SUBLIM~1/sublime_text.exe'
    alias svn='/cygdrive/c/Program\ Files/TortoiseSVN/bin/svn.exe'
    alias vim='vim.bat'
    alias vs_2010='cmd /c "start cmd /k $(cygpath -wa /cygdrive/c/PROGRA~2/MICROS~2.0/VC/vcvarsall.bat) x86"'
    alias vs_2012='cmd /c "start cmd /k $(cygpath -wa /cygdrive/c/PROGRA~2/MICROS~3.0/Common7/Tools/VsDevCmd.bat)"'
    alias werl='/cygdrive/c/PROGRA~1/erl6.2/bin/werl.exe'
    alias wjed='/cygdrive/c/PROGRA~2/JED/bin/wjed.exe'
elif [ ${SYS_NAME:0:15} == "MINGW64_NT-10.0" ]; then
    # Do something under Windows NT platform
    alias ack='perl /c/PROGRA~3/CHOCOL~1/lib/STRAWB~1/Ack/tools/ack.pl'
    alias atom='/c/Users/ljones/AppData/Local/atom/bin/atom'
    alias cap2esc='~/professional/software/devtools/vim/uncap.exe 0x1b:0x14'
    alias clj='clj-160'
    # alias clj-160="java -cp $(cygpath -wa $CYGHOME/professional/software/languages/clojure/clojure-1.6.0/clojure-1.6.0.jar) clojure.main"
    alias clj-clr='clj-clr-160'
    alias clj-clr-160="$CYGHOME/professional/software/languages/clojure-clr/Release\ 4.0/Clojure.Main.exe"
    alias clj-clr-160-dbg="$CYGHOME/professional/software/languages/clojure-clr/Debug\ 4.0/Clojure.Main.exe"
    alias cucumber='/c/Ruby21-x64/bin/cucumber.bat'
    alias doxygen='/c/PROGRA~1/doxygen/bin/doxygen.exe'
    alias eclipse='/c/eclipse/eclipse.exe'
    alias eclipse_j2ee='/c/eclipse-j2ee/eclipse.exe'
    alias eject="$CYGHOME/professional/software/system/drivetools/EjectMedia.exe"
    alias elixir='/c/PROGRA~2/Elixir/bin/elixir.bat'
    alias elixirc='/c/PROGRA~2/Elixir/bin/elixirc.bat'
    alias emacs='/c/emacs-24.4/bin/emacsclientw.exe -na /c/emacs-24.4/bin/runemacs.exe -c'
    alias emacs_old='/c/emacs-24.4/bin/runemacs.exe -geometry 80x50'
    alias erl='/c/PROGRA~1/erl6.2/bin/erl.exe -smp'
    alias erlc='/c/PROGRA~1/erl6.2/bin/erlc.exe'
    alias escript='/c/PROGRA~1/erl6.2/bin/escript.exe'
#     alias find_grep="/c/Python34/python.exe $(cygpath -w $CYGHOME/professional/projects/pyutils/find_grep.py)"
    alias gem='cmd //c /c/Ruby21-x64/bin/gem.bat'
    alias inst_profile="cp .bash_profile $CYGHOME/.bash_profile"
    alias jed='/c/PROGRA~2/JED/bin/jed.exe'
    alias hg='/c/PROGRA~1/TortoiseHg/hg.exe'
    alias icucumber='/c/PROGRA~1/IRONRU~1.1/bin/cucumber.bat'
    alias iex='/c/PROGRA~2/Elixir/bin/iex.bat'
    alias iexw='/c/PROGRA~2/Elixir/bin/iex.bat --werl'
    alias igem='/c/PROGRA~1/IRONRU~1.1/bin/igem.bat'
#    alias ilettuce='ipy $(cygpath -wd /c/PROGRA~1/IronPython\ 2.7/Lib/site-packages/lettuce/lettuce_cli.py)'
    alias iirb='/c/PROGRA~1/IRONRU~1.1/bin/iirb.bat'
#    alias inosetests='ipy $(cygpath -wd /c/PROGRA~1/IronPython\ 2.7/Lib/site-packages/nose/core.py)'
    alias ipy='ipy27'
    alias ipy27='/c/PROGRA~2/IronPython\ 2.7/ipy64.exe'
    alias ipy27_32='/c/PROGRA~2/IronPython\ 2.7/ipy.exe'
    alias ipycc='ipycc27'
    alias ipycc27='/c/PROGRA~2/IronPython\ 2.7/ipy64.exe -X:TabCompletion -X:ColorfulConsole'
    alias ipycc27_32='/c/PROGRA~2/IronPython\ 2.7/ipy.exe -X:TabCompletion -X:ColorfulConsole'
    alias ir='/c/PROGRA~1/IRONRU~1.1/bin/ir.exe'
    alias irake='/c/PROGRA~1/IRONRU~1.1/bin/rake.bat'
    alias irb='cmd //c /c/Ruby21-x64/bin/irb.bat'
    alias jar='/c/PROGRA~1/Java/jdk1.8.0_45/bin/jar.exe'
    alias java='/c/PROGRA~1/Java/jdk1.8.0_45/bin/java.exe'
    alias javac='/c/PROGRA~1/Java/jdk1.8.0_45/bin/javac.exe'
    alias lein="$CYGHOME/.lein/bin/lein.bat"
    alias lettuce='/c/Python27/Scripts/lettuce.exe'
    alias lighttable=$CYGHOME/professional/software/devtools/light_table/LightTable/LightTable.exe
    alias list_usb="$CYGHOME/professional/software/system/drivetools/ListUsbDrives.exe"
#    alias manage_mapped_drives="/c/Python34/python.exe $(cygpath -w $CYGHOME/professional/projects/pyutils/manage_mapped_drives.py)"
	alias mix="/c/PROGRA~2/Elixir/bin/mix.bat"
    alias mysql='/c/PROGRA~1/MySQL/MySQL\ Server\ 5.6/bin/mysql.exe'
#    alias name_2_ip_addr="ipy $(cygpath -w $CYGHOME/professional/projects/ipyutils/name_to_ip_addr.py)"
    alias nant=/c/PROGRA~2/nant-0.92/bin/nant
    alias nosetests=/c/Python27/Scripts/nosetests.exe
    alias npp='/c/PROGRA~2/NOTEPA~1/notepad++.exe'
#    alias path_as_list="python $(cygpath -w $CYGHOME/professional/projects/pyutils/path2list.py)"
#    alias path2svnurl="python $(cygpath -w $CYGHOME/professional/projects/pyutils/dirname_to_svn_url.py)"
    alias pn='/c/PROGRA~2/PROGRA~1/pn.exe'
    alias pip='/c/Python27/Scripts/pip'
    alias python='python27'
    alias python27='/c/Python27/python.exe'
    alias python34='/c/Python34/python.exe'
    alias R='/c/PROGRA~1/R/R-3.0.2/bin/x64/Rgui.exe'
    alias ra12='/c/PROGRA~2/SolArc/RightAngle.NET/12.0/Client/RightAngle.exe'
    alias rspec='/c/Ruby21-x64/bin/rspec.bat'
    alias Rterm='/c/PROGRA~1/R/R-3.0.2/bin/x64/Rterm.exe'
#    alias rm_gen_bin="python $(cygpath -wa $CYGHOME/professional/projects/pyutils/rm_gen_bin.py)"
    alias rm_usb="$CYGHOME/professional/software/system/drivetools/RemoveDrive.exe"
    alias roundup_admin='python -c "from roundup.scripts.roundup_admin import run; run()"'
    alias roundup_server='python -c "from roundup.scripts.roundup_server import run; run()"'
#    alias save_clipboard_image="ipy $(cygpath -w $CYGHOME/professional/projects/ipyutils/save_clipboard_image.py)"
    alias st='/c/PROGRA~2/SUBLIM~1/sublime_text.exe'
    alias svn='/c/Program\ Files/TortoiseSVN/bin/svn.exe'
    alias vs_2010='start cmd /k /c/PROGRA~2/MICROS~2.0/VC/vcvarsall.bat x86'
    alias vs_2012='start cmd /k /c/PROGRA~2/MICROS~3.0/Common7/Tools/VsDevCmd.bat'
    alias werl='/c/PROGRA~1/erl6.2/bin/werl.exe'
    alias wjed='/c/PROGRA~2/JED/bin/wjed.exe'
fi

# Aliases commont to both Cygwin and MWING32
if [[ ${SYS_NAME:7:2} == "NT" || ${SYS_NAME:8:2} == "NT" ]]; then
    # Do something for cygwin and msys
    alias aspell='/cygdrive/c/PROGRA~1/Aspell/bin/aspell.exe'
fi
