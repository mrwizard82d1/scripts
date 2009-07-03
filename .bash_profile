# (Bash) Shell startup script.


# Configure the editor for svn.
export SVN_EDITOR=$(cygpath -w /cygdrive/c/PROGRA~1/JED/bin/wjed.exe)


# Quickly change to directories of interest.
function cf_integ()
{
	cd /cygdrive/e/scf/cf_integ
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

function sandbox()
{
	cd /cygdrive/e/devl/sandbox/jonesl
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

function scf()
{
	cd /cygdrive/e/scf
}

function src()
{
  cd /cygdrive/e/scf/cdm/CollaborativeForecasting/versions/release1
}

function support()
{
	cd /cygdrive/e/support
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
  cd /cygdrive/e/devl/Branches/PimsFamilyV7_1ER
}

