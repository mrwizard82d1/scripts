# (Bash) Shell startup script.


# Configure the editor for svn.
export SVN_EDITOR=$(cygpath -w /cygdrive/c/PROGRA~1/JED/bin/wjed.exe)


# Quickly change to directories of interest.
function cf_env()
{
	cd ~/employee/current/productdir/cf/environment
}

function cf_test()
{
	cd ~/employee/current/productdir/cf/test
}

function cf_integ()
{
	cd /cygdrive/d/scf/cf_integ
}

function devl()
{
  cd /cygdrive/d/scf/devl/${1}
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

function orion_env()
{
	cd ~/employee/current/productdir/orion/environment
}

function orion_test()
{
	cd ~/employee/current/productdir/orion/test
}

function projects()
{
	cd ~/professional/projects/${1}
}

function ruby_utils()
{
	cd ~/professional/projects/ruby_utils/lib
}

function scf()
{
	cd /cygdrive/d/scf
}

function sandbox()
{
	cd /cygdrive/d/devl/sandbox/jonesl
}

function support()
{
	cd /cygdrive/d/support
}

function tarit()
{
	tar -zcf ${1}.tgz --exclude=.svn ${1}
}

function untarit()
{
	tar -zxf ${1}.tgz
}

function v7()
{
  cd /cygdrive/d/devl/Branches/PimsFamilyV7_1ER
}

