# (Bash) Shell startup script.


# Configure the editor for svn.
if [ $TERM = cygwin ]
then
    export SVN_EDITOR=$(cygpath -w /cygdrive/c/PROGRA~1/JED/bin/wjed.exe)
    export GIT_EDITOR=/cygdrive/c/PROGRA~1/JED/bin/wjed.exe
elif [ $TERM = xterm ]
then
    PS1='\u@\h $ '
    export GIT_EDITOR=xjed
fi

# Quickly change to directories of interest.
function cf_integ()
{
	cd /cygdrive/d/scf/cf_integ
}

function dev()
{
  cd /cygdrive/d/scf/${1}
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

function nightly_build()
{
  cd /cygdrive/d/devl/ToolSrc/NightlyBuild
}

function proj_mgt()
{
	cd ~/employee/current/productdir/${1}/proj_mgt/${2}
}

function r_and_d()
{
	cd ~/employee/current/productdir/${1}/r_and_d/${2}
}

function projects()
{
	cd ~/professional/projects/${1}
}

function ruby_utils()
{
	cd ~/professional/projects/ruby_utils/lib
}

function sandbox()
{
	cd /cygdrive/d/devl/sandbox/jonesl
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

