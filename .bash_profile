# (Bash) Shell startup script.


# Configure the editor for svn, git and hg.
if [ $TERM = cygwin ]
then
    export SVN_EDITOR=$(cygpath -w /cygdrive/c/PROGRA~1/JED/bin/wjed.exe)
    export GIT_EDITOR=/cygdrive/c/PROGRA~1/JED/bin/wjed.exe
    export EDITOR=$(cygpath -w /cygdrive/c/PROGRA~1/JED/bin/wjed.exe)
elif [ $TERM = xterm ]
then
    PS1='\u@\h $ '
    export GIT_EDITOR=xjed
    export EDITOR=xjed
fi

# Configure emacs screen sizes
case `hostname` in
    Bullwinkle) EMACS_SIZE=80x45;;
    Ginny-PC) EMACS_SIZE=80x40;;
    aspen-prjly8pjb ) EMACS_SIZE=80x45;;
    *) EMACS_SIZE=80x50;;
esac

# Quickly change to directories of interest.
function cf_integ()
{
    cd /cygdrive/d/scf/cf_integ
}

function dev()
{
    cd /cygdrive/d/scf/dev/${1}
}

function deployment()
{
    cd ~/employee/current/productdir/${1}/deployment/${2}
}

function env()
{
    cd ~/employee/current/productdir/${1}/environment/${2}
}

function impl()
{
    cd ~/employee/current/productdir/${1}/implementation/${2}
}

function latest()
{
    ls -ltd ${1} | head ${2}
}

function newer()
{
    find ${1} -name '*' -newer ${1}.tgz
}

function proj_mgt()
{
    cd ~/employee/current/productdir/${1}/proj_mgt/${2}
}

function projects()
{
    cd ~/professional/projects/${1}
}

function r_and_d()
{
    cd ~/employee/current/productdir/${1}/r_and_d/${2}
}

function ruby_utils()
{
	cd ~/professional/projects/ruby_utils/lib
}

function sandbox()
{
	cd /cygdrive/d/devl/sandbox/jonesl
}

function scf()
{
    cd /cygdrive/d/scf/${1}
}

function sts()
{
	cd ~/sharpen-the-saw/${1}
}

function support()
{
	cd ~/employee/current/productdir/${1}/support/${2}
}

function tarit()
{
	tar -zcf ${1}.tgz --exclude=.svn ${1}
}

function test()
{
	cd ~/employee/current/productdir/${1}/test/${2}
}

function untarit()
{
	tar -zxf ${1}.tgz
}

function v7()
{
  cd /cygdrive/d/devl/Branches/PimsFamilyV7_1ER
}

# Aliases
if [ $TERM = cygwin ]
then
    alias ant='${ANT_HOME}/bin/ant.bat'
    alias aspell='/cygdrive/c/PROGRA~1/Aspell/bin/aspell.exe'
    alias clojure='java -cp $(cygpath -w ~/professional/software/languages/clojure/clojure-1.2.0/clojure.jar)\;$(cygpath -w ~/professional/software/languages/clojure/clojure-contrib-1.2.0/target/clojure-contrib-1.2.0.jar) clojure.main'
    alias cucumber='/cygdrive/c/Ruby187/bin/cucumber.bat'
    alias doxygen='/cygdrive/c/PROGRA~1/doxygen/bin/doxygen.exe'
    alias eclipse='/cygdrive/c/eclipse/eclipse.exe'
    alias eclipse_j2ee='/cygdrive/c/eclipse-j2ee/eclipse.exe'
    alias eject='~/professional/software/system/drivetools/EjectMedia.exe'
    alias emacs="/cygdrive/c/emacs-23.2/bin/runemacs.exe -geometry $EMACS_SIZE"
    alias erl='/cygdrive/c/PROGRA~1/erl5.8.1.1/bin/erl.exe -smp'
    alias erlc='/cygdrive/c/PROGRA~1/erl5.8.1.1/bin/erlc.exe'
    alias escript='/cygdrive/c/PROGRA~1/erl5.8.1.1/bin/escript.exe'
    alias find_grep='/cygdrive/c/Python31/python.exe $(cygpath -w ~/professional/projects/pyutils/find_grep.py)'
    alias inst_profile='cp .bash_profile ~/.bash_profile'
    alias jed='/cygdrive/c/PROGRA~1/JED/bin/jed.exe'
    alias hg='/cygdrive/c/PROGRA~1/TortoiseHg/hg.exe'
    alias gem='/cygdrive/c/Ruby187/bin/gem.bat'
    alias icucumber='/cygdrive/c/PROGRA~1/IRONRU~1.1/bin/cucumber.bat'
    alias igem='/cygdrive/c/PROGRA~1/IRONRU~1.1/bin/igem.bat'
    alias ilettuce='ipy $(cygpath -w /cygdrive/c/PROGRA~1/IRONPY~1.7/Lib/site-packages/lettuce/commands.py)'
    alias iirb='/cygdrive/c/PROGRA~1/IRONRU~1.1/bin/iirb.bat'
    alias ipy='ipy27'
    alias ipy26='/cygdrive/c/PROGRA~1/IronPython\ 2.6/ipy.exe'
    alias ipy26_40='/cygdrive/c/PROGRA~1/IronPython\ 2.6\ for\ .NET\ 4.0/ipy.exe'
    alias ipy27='/cygdrive/c/PROGRA~1/IronPython\ 2.7/ipy.exe'
    alias ipycc='ipycc27'
    alias ipycc26='/cygdrive/c/PROGRA~1/IronPython\ 2.6/ipy.exe -X:TabCompletion -X:ColorfulConsole'
    alias ipycc26_40='/cygdrive/c/PROGRA~1/IronPython\ 2.6\ for\ .NET\ 4.0/ipy.exe -X:TabCompletion -X:ColorfulConsole'
    alias ipycc27='/cygdrive/c/PROGRA~1/IronPython\ 2.7/ipy.exe -X:TabCompletion -X:ColorfulConsole'
    alias ir='/cygdrive/c/PROGRA~1/IRONRU~1.1/bin/ir.exe'
    alias irake='/cygdrive/c/PROGRA~1/IRONRU~1.1/bin/rake.bat'
    alias irb='/cygdrive/c/ruby187/bin/irb.bat'
    alias irdoc='/cygdrive/c/PROGRA~1/IRONRU~1.1/bin/irdoc.bat'
    alias iri='/cygdrive/c/PROGRA~1/IRONRU~1.1/bin/iri.bat'
    alias irb='/cygdrive/c/Ruby187/bin/irb.bat'
    alias jar='/cygdrive/c/PROGRA~1/Java/jdk1.6.0_07/bin/jar.exe'
    alias java='/cygdrive/c/PROGRA~1/Java/jdk1.6.0_07/bin/jar.exe'
    alias lettuce='/cygdrive/c/Python27/Scripts/lettuce.exe'
    alias list_usb='~/professional/software/system/drivetools/ListUsbDrives.exe'
    alias manage_mapped_drives='/cygdrive/c/Python31/python.exe $(cygpath -w ~/professional/projects/pyutils/manage_mapped_drives.py)'
    alias nant='/usr/local/bin/nant-0.85/bin/NAnt.exe'
    alias path_as_list='python $(cygpath -w ~/professional/projects/pyutils/path2list.py)'
    alias path2svnurl='python $(cygpath -w ~/professional/projects/pyutils/dirname_to_svn_url.py)'
    alias pn='/cygdrive/c/PROGRA~1/PROGRA~1/pn.exe'
    alias pip='/cygdrive/c/Python27/Scripts/pip'
    alias python='python27'
    alias python25='/cygdrive/c/Python25/python.exe'
    alias python27='/cygdrive/c/Python27/python.exe'
    alias python31='/cygdrive/c/Python31/python.exe'
    alias rgui='/cygdrive/c/PROGRA~1/R/R-2.12.1/bin/i386/Rgui.exe'
    alias rscript='/cygdrive/c/PROGRA~1/R/R-2.12.1/bin/Rscript.exe'
    alias rdoc='/cygdrive/c/Ruby187/bin/rdoc.bat'
    alias ri='/cygdrive/c/Ruby187/bin/ri.bat'
    alias rm_usb='~/professional/software/system/drivetools/RemoveDrive.exe'
    alias rspec='/cygdrive/c/Ruby187/bin/rspec.bat'
    alias ruby='/cygdrive/c/Ruby187/bin/ruby.exe'
    alias spec='/cygdrive/c/ruby187/bin/spec.bat'
    alias save_clipboard_image='ipy $(cygpath -w ~/professional/projects/ipyutils/save_clipboard_image.py)'
    alias scmv74='/cygdrive/c/PROGRA~1/AspenTech/aspenmimi/Bin/AspenTech.SCM.UI.Shell.exe'
    alias wjed='/cygdrive/c/PROGRA~1/JED/bin/wjed.exe'
fi
