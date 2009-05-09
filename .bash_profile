# (Bash) Shell startup script.


# Configure the editor for svn.
export SVN_EDITOR=$(cygpath -w /cygdrive/c/PROGRA~1/JED/bin/wjed.exe)


# Quickly change to directories of interest.
function devl()
{
  cd /cygdrive/e/devl/
}

function v7()
{
  cd /cygdrive/e/devl/Branches/PimsFamilyV7_1ER
}

function nightly_build()
{
  cd /cygdrive/e/devl/ToolSrc/NightlyBuild
}

function orion_env()
{
	cd ~/employee/current/productdir/orion/environment
}

function orion_test()
{
	cd ~/employee/current/productdir/orion/test
}

function scf_env()
{
	cd ~/employee/current/productdir/scf/environment
}

function projects()
{
	cd ~/professional/projects/${1}
}

function ruby_utils()
{
	cd ~/professional/projects/ruby_utils/lib
}

function tarit()
{
	tar -zcf ${1}.tgz --exclude=.svn ${1}
}

function untarit()
{
	tar -zxf ${1}.tgz
}
