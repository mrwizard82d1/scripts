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
    alias clojure='java -cp $(cygpath -w ~/professional/software/languages/clojure/clojure-1.2.0/clojure.jar)\;$(cygpath -w ~/professional/software/languages/clojure/clojure-contrib-1.2.0/target/clojure-contrib-1.2.0.jar) clojure.main'
    alias cucumber='/cygdrive/c/Ruby187/bin/cucumber.bat'
    alias emacs="/cygdrive/c/emacs-23.2/bin/runemacs.exe -geometry $EMACS_SIZE"
    alias hg='/cygdrive/c/PROGRA~1/TortoiseHg/hg.exe'
    alias gem='/cygdrive/c/Ruby187/bin/gem.bat'
    alias igem='/cygdrive/c/PROGRA~1/IRONRU~1.0v4/bin/igem.bat "$@"'
    alias iirb='/cygdrive/c/PROGRA~1/IRONRU~1.0v4/bin/iirb.bat "$@"'
    alias ir='/cygdrive/c/PROGRA~1/IRONRU~1.0v4/bin/ir.exe "$@"'
    alias irdoc='/cygdrive/c/PROGRA~1/IRONRU~1.0v4/bin/irdoc.bat "$@"'
    alias iri='/cygdrive/c/PROGRA~1/IRONRU~1.0v4/bin/iri.bat "$@"'
    alias irb='/cygdrive/c/Ruby187/bin/irb.bat'
    alias lettuce='/cygdrive/c/Python27/Scripts/lettuce.exe'
    alias manage_mapped_drives='/cygdrive/c/Python31/python.exe $(cygpath -w ~/professional/projects/pyutils/manage_mapped_drives.py)'
    alias path_as_list='python $(cygpath -w ~/professional/projects/pyutils/path2list.py)'
    alias pip='/cygdrive/c/Python27/Scripts/pip'
    alias rdoc='/cygdrive/c/Ruby187/bin/rdoc.bat'
    alias ri='/cygdrive/c/Ruby187/bin/ri.bat'
    alias rspec='/cygdrive/c/Ruby187/bin/rspec.bat'
    alias ruby='/cygdrive/c/Ruby187/bin/ruby.exe'
    alias save_clipboard_image='ipy $(cygpath -w ~/professional/projects/ipyutils/save_clipboard_image.py)'
    alias wjed='/cygdrive/c/PROGRA~1/JED/bin/wjed.exe'
fi
