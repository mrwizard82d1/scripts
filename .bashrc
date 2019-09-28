set -o vi

# User-specific functions and aliases.

# Utility functions
function erl_shell_history()
{
	export ERL_AFLAGS="-kernel shell_history enabled"
}

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

MINGW_SYS_NAME="MINGW64_NT"
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
elif [ ${SYS_NAME:0:10} == $MINGW_SYS_NAME ]; then
	function src()
	{
		cd /c/src/${1}
	}
fi

# Functions common to Cygwin and MWING64
if [[ ${SYS_NAME:7:2} = "NT" || ${SYS_NAME:8:2} = "NT" ]] ; then
	function work_proj()
	{
		cd ~/work/projects/${1}
	}

    function acn-reagent()
    {
        cd /cygdrive/c/AutobahnProjects/Autobahn/app/Eleanor.UI.Web/Content/javascripts/react/site-bdc/acn-reagent
    }
fi 

# Work only
if [ ${SYS_NAME:0:10} == $MINGW_SYS_NAME ]; then
    export SRC=/c/src
	function res_proj()
	{
		cd $SRC/${1}
	}

	function proj_template()
	{
		cd $SRC/Project_Template/${1}
	}

	function work_folder()
	{
		cd $SRC/Project_Template/Workfolder/${1}
	}

	function mlp()
	{
		cd $SRC/MatlabPackages/${1}
	}

	alias matlab-2017='"/c/Program Files/MATLAB/R2017b/bin/matlab.exe"'
	alias matlab-2018a='"/c/Program Files/MATLAB/R2018a/bin/matlab.exe"'
	alias matlab='"/c/Program Files/MATLAB/R2018b/bin/matlab.exe"'
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
    alias emacs='open -a /Applications/Emacs.app'
    alias find_grep='python2 ~/professional/projects/pyutils/find_grep.py'
    alias node='export NODE_NO_READLINE=1; rlwrap node'
elif [ ${SYS_NAME:0:5} == "Linux" ]; then
    # Do something under Linux platform
    :
elif [ ${SYS_NAME:0:9} == "CYGWIN_NT" ]; then
    # Do something under Cygwin platform
    alias atom='/cygdrive/c/Users/larryj/AppData/Local/atom/bin/atom.cmd'
    alias clj='clj-1.10.0'
    alias clj-180='java -cp $(cygpath -wa ~/professional/software/languages/clojure/clojure-1.8.0/clojure-1.8.0.jar) clojure.main'
    alias clj-190='java -cp $(cygpath -wa ~/professional/software/languages/clojure/clojure-1.9.0/clojure-1.9.0.jar) clojure.main'
    alias clj-1.10.0='java -cp $(cygpath -wa ~/professional/software/languages/clojure/clojure-1.10.0/clojure-1.10.0.jar) clojure.main'
    alias clj-clr='clj-clr-180'
    alias clj-clr-dbg='clj-clr-180-dbg'
    alias clj-clr-180="~/professional/software/languages/clojure-clr/1.8.0/Release\ 4.0/Clojure.Main.exe"
    alias clj-clr-180-dbg="~/professional/software/languages/clojure-clr/1.8.0/Debug\ 4.0/Clojure.Main.exe"
    # Note Clojure-CLR 1.9.0 not ready for prime time
    alias clj-clr-190="~/professional/software/languages/clojure-clr/1.9.0/Release\ 4.0/Clojure.Main.exe"
    alias clj-clr-190-dbg="~/professional/software/languages/clojure-clr/1.9.0/Debug\ 4.0/Clojure.Main.exe"
    alias cucumber='/cygdrive/c/tools/ruby26/bin/cucumber.bat'
    alias doxygen='/cygdrive/c/PROGRA~1/doxygen/bin/doxygen.exe'
    alias eclipse='/cygdrive/c/eclipse/eclipse.exe'
    alias eclipse_j2ee='/cygdrive/c/eclipse-j2ee/eclipse.exe'
    alias eject='~/professional/software/system/drivetools/EjectMedia.exe'
    alias elixir='/c/ProgramData/chocolatey/lib/Elixir/bin/elixir'
    alias elixirc='/c/ProgramData/chocolatey/lib/Elixir/bin/elixirc'
    alias emacs='/cygdrive/c/emacs-25.3/bin/runemacs.exe'
    alias erl='/cygdrive/c/PROGRA~1/erl6.2/bin/erl.exe -smp'
    alias erlc='/cygdrive/c/PROGRA~1/erl6.2/bin/erlc.exe'
    alias escript='/cygdrive/c/PROGRA~1/erl6.2/bin/escript.exe'
    alias find_grep='py -2 $(cygpath -w ~/professional/projects/pyutils/find_grep.py)'
    alias gem='/cygdrive/c/tools/ruby26/bin/gem'
    alias git='/cygdrive/c/PROGRA~1/Git/bin/git.exe'
    alias inst_profile='cp .bash_profile ~/.bash_profile'
    alias jed='/cygdrive/c/PROGRA~2/JED/bin/jed.exe'
    alias hg='/cygdrive/c/PROGRA~1/TortoiseHg/hg.exe'
    alias icucumber='/cygdrive/c/PROGRA~1/IRONRU~1.1/bin/cucumber.bat'
    alias iex='/c/ProgramData/chocolatey/lib/Elixir/bin/iex'
    alias iexw='/c/ProgramData/chocolatey/lib/Elixir/bin/iex --werl'
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
    alias irb='/cygdrive/c/tools/ruby26/bin/irb.bat'
    alias jar='/cygdrive/c/PROGRA~1/Java/jdk1.8.0_161/bin/jar.exe'
    alias java='/cygdrive/c/PROGRA~1/Java/jdk1.8.0_161/bin/java.exe'
    alias javac='/cygdrive/c/PROGRA~1/Java/jdk1.8.0_161/bin/javac.exe'
    alias lein='~/.lein/bin/lein.bat'
    alias lettuce='/cygdrive/c/Python27/Scripts/lettuce.exe'
    alias lighttable=~/professional/software/devtools/light_table/LightTable/LightTable.exe
    alias list_usb='~/professional/software/system/drivetools/ListUsbDrives.exe'
    alias manage_mapped_drives='py $(cygpath -w ~/professional/projects/pyutils/manage_mapped_drives.py)'
    alias mix='/c/ProgramData/chocolatey/lib/Elixir/bin/mix'
    alias mongo='/cygdrive/c/PROGRA~1/MongoDB/Server/4.0/bin/mongo.exe'
    alias mysql='/cygdrive/c/PROGRA~1/MySQL/MySQL\ Server\ 5.6/bin/mysql.exe'
    alias name_2_ip_addr='ipy $(cygpath -w ~/professional/projects/ipyutils/name_to_ip_addr.py)'
    alias nant=/cygdrive/c/PROGRA~2/nant-0.92/bin/nant
    alias nosetests=/cygdrive/c/Python27/Scripts/nosetests.exe
    alias npp='/cygdrive/c/PROGRA~1/NOTEPA~1/notepad++.exe'
    alias path2list='py $(cygpath -w ~/professional/projects/pyutils/path2list.py)'
    alias path2svnurl='py $(cygpath -w ~/professional/projects/pyutils/dirname_to_svn_url.py)'
    alias pn='/cygdrive/c/PROGRA~2/PROGRA~1/pn.exe'
    alias pip='/cygdrive/c/Python27/Scripts/pip'
    alias python='py -3'
    alias python2='py -2'
    alias python3='py -3'
    alias R='/cygdrive/c/PROGRA~1/R/R-3.0.2/bin/x64/Rgui.exe'
    alias ra12='/cygdrive/c/PROGRA~2/SolArc/RightAngle.NET/12.0/Client/RightAngle.exe'
    alias rm_gen_bin='py $(cygpath -wa ~/professional/projects/pyutils/rm_gen_bin.py)'
    alias rm_usb='~/professional/software/system/drivetools/RemoveDrive.exe'
    alias roundup_admin='py -c "from roundup.scripts.roundup_admin import run; run()"'
    alias roundup_server='py -c "from roundup.scripts.roundup_server import run; run()"'
    alias rspec='/cygdrive/c/tools/ruby26/bin/rspec.bat'
    alias Rterm='/cygdrive/c/PROGRA~1/R/R-3.0.2/bin/x64/Rterm.exe'
    #    alias ruby='/cygdrive/c/tools/ruby26/bin/ruby.exe'
    alias save_clipboard_image='ipy $(cygpath -w ~/professional/projects/ipyutils/save_clipboard_image.py)'
    alias st='/cygdrive/c/PROGRA~2/SUBLIM~1/sublime_text.exe'
    alias svn='/cygdrive/c/Program\ Files/TortoiseSVN/bin/svn.exe'
    alias vim='vim.bat'
    alias vs_2010='cmd /c "start cmd /k $(cygpath -wa /cygdrive/c/PROGRA~2/MICROS~2.0/VC/vcvarsall.bat) x86"'
    alias vs_2012='cmd /c "start cmd /k $(cygpath -wa /cygdrive/c/PROGRA~2/MICROS~3.0/Common7/Tools/VsDevCmd.bat)"'
    alias werl='/cygdrive/c/PROGRA~1/erl6.2/bin/werl.exe'
    alias wjed='/cygdrive/c/PROGRA~2/JED/bin/wjed.exe'
elif [ ${SYS_NAME:0:10} == $MINGW_SYS_NAME ]; then
    # Do something under Windows NT platform
    alias ack='perl /c/PROGRA~3/CHOCOL~1/lib/STRAWB~1/Ack/tools/ack.pl'
    alias atom='/c/Users/larryj/AppData/Local/atom/bin/atom'
    alias boot=~/.boot/boot.exe
    alias cap2esc='~/professional/software/devtools/vim/uncap.exe 0x1b:0x14'
    alias clj='clj-1.10.0'
    alias clj-180='java -cp $(cygpath -wa ~/professional/software/languages/clojure/clojure-1.8.0/clojure-1.8.0.jar) clojure.main'
    alias clj-190='java -cp $(cygpath -wa ~/professional/software/languages/clojure/clojure-1.9.0/clojure-1.9.0.jar) clojure.main'
    alias clj-1.10.0='java -cp $(cygpath -wa ~/professional/software/languages/clojure/clojure-1.10.0/clojure-1.10.0.jar) clojure.main'
    alias clj-clr='clj-clr-180'
    alias clj-clr-dbg='clj-clr-180-dbg'
    alias clj-clr-180="~/professional/software/languages/clojure-clr/1.8.0/Release\ 4.0/Clojure.Main.exe"
    alias clj-clr-180-dbg="~/professional/software/languages/clojure-clr/1.8.0/Debug\ 4.0/Clojure.Main.exe"
    # Note Clojure-CLR 1.9.0 not ready for prime time
    alias clj-clr-190="~/professional/software/languages/clojure-clr/1.9.0/Release\ 4.0/Clojure.Main.exe"
    alias clj-clr-190-dbg="~/professional/software/languages/clojure-clr/1.9.0/Debug\ 4.0/Clojure.Main.exe"
    alias cucumber='/c/tools/ruby26/bin/cucumber.bat'
    alias doxygen='/c/PROGRA~1/doxygen/bin/doxygen.exe'
    alias eclipse='/c/eclipse/eclipse.exe'
    alias eclipse_j2ee='/c/eclipse-j2ee/eclipse.exe'
    alias eject="$CYGHOME/professional/software/system/drivetools/EjectMedia.exe"
    alias elixir='/c/ProgramData/chocolatey/lib/Elixir/bin/elixir'
    alias elixirc='/c/ProgramData/chocolatey/lib/Elixir/bin/elixir'
    alias emacs='/c/emacs-25.3/bin/runemacs.exe'
    alias erl='/c/PROGRA~1/erl6.2/bin/erl.exe -smp'
    alias erlc='/c/PROGRA~1/erl6.2/bin/erlc.exe'
    alias escript='/c/PROGRA~1/erl6.2/bin/escript.exe'
    alias find_grep="py -2 $HOME/professional/projects/pyutils/find_grep.py"
    alias gem='/c/tools/ruby26/bin/gem'
    alias inst_profile="cp .bash_profile $CYGHOME/.bash_profile"
    alias jed='/c/PROGRA~2/JED/bin/jed.exe'
    alias hg='/c/PROGRA~1/TortoiseHg/hg.exe'
    alias icucumber='/c/PROGRA~1/IRONRU~1.1/bin/cucumber.bat'
    alias iex='/c/ProgramData/chocolatey/lib/Elixir/bin/iex'
    alias iexw='/c/ProgramData/chocolatey/lib/Elixir/bin/iex --werl'
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
    alias irb='cmd //c /c/tools/ruby26/bin/irb.bat'
    alias jar='/c/PROGRA~1/Java/jdk1.8.0_162/bin/jar.exe'
    alias java='/c/PROGRA~1/Java/jdk1.8.0_162/bin/java.exe'
    alias javac='/c/PROGRA~1/Java/jdk1.8.0_162/bin/javac.exe'
    alias lein="~/.lein/bin/lein.bat"
    alias lettuce='/c/Python27/Scripts/lettuce.exe'
    alias meld="/c/PROGRA~2/Meld/Meld.exe"
    alias mix='/c/ProgramData/chocolatey/lib/Elixir/bin/mix'
    alias mongo='/c/PROGRA~1/MongoDB/Server/4.0/bin/mongo.exe'
    alias mysql='/c/PROGRA~1/MySQL/MySQL\ Server\ 5.6/bin/mysql.exe'
#    alias name_2_ip_addr="ipy $(cygpath -w $CYGHOME/professional/projects/ipyutils/name_to_ip_addr.py)"
    alias nant=/c/PROGRA~2/nant-0.92/bin/nant
    alias nosetests=/c/Python27/Scripts/nosetests.exe
    alias path2list="py $(cygpath $HOME/professional/projects/pyutils/path2list.py)"
#    alias path2svnurl="py $(cygpath $HOME/professional/projects/pyutils/dirname_to_svn_url.py)"
    alias pip2='/c/Python27/Scripts/pip'
    alias pip3='$HOME/AppData/Local/Programs/Python/Python37/Scripts/pip.exe'
    alias pip='pip'
    alias python='py -3'
    alias python2='py -2'
    alias python3='py -3'
    alias R='/c/PROGRA~1/R/R-3.0.2/bin/x64/Rgui.exe'
    alias ra12='/c/PROGRA~2/SolArc/RightAngle.NET/12.0/Client/RightAngle.exe'
    alias rspec='/c/tools/ruby26/bin/rspec.bat'
    alias Rterm='/c/PROGRA~1/R/R-3.0.2/bin/x64/Rterm.exe'
    alias rm_gen_bin="py $(cygpath $HOME/professional/projects/pyutils/rm_gen_bin.py)"
#    alias save_clipboard_image="ipy $(cygpath -w $CYGHOME/professional/projects/ipyutils/save_clipboard_image.py)"
    alias st='/c/PROGRA~2/SUBLIM~1/sublime_text.exe'
    alias svn='/c/Program\ Files/TortoiseSVN/bin/svn.exe'
    alias vs_2010='start cmd /k /c/PROGRA~2/MICROS~2.0/VC/vcvarsall.bat x86'
    alias vs_2012='start cmd /k /c/PROGRA~2/MICROS~3.0/Common7/Tools/VsDevCmd.bat'
    alias werl='/c/PROGRA~1/erl6.2/bin/werl.exe'
    alias wjed='/c/PROGRA~2/JED/bin/wjed.exe'
    alias zip_dirname="py -2 $HOME/professional/projects/pyutils/zip_dirname.py"
fi

# Aliases commont to both Cygwin and MWING64
if [[ ${SYS_NAME:7:2} == "NT" || ${SYS_NAME:8:2} == "NT" ]]; then
    # Do something for cygwin and msys
    alias aspell='/cygdrive/c/PROGRA~1/Aspell/bin/aspell.exe'
	alias glodi='git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset'\'' --date=iso8601'
fi
