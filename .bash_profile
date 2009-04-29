# (Bash) Shell startup script.


# Configure the editor for svn.
export SVN_EDITOR=$(cygpath -w /cygdrive/c/PROGRA~1/JED/bin/wjed.exe)


# Quickly change to directories of interest.
function cd_devl()
{
  cd /cygdrive/e/devl/
}

function cd_v7()
{
  cd /cygdrive/e/devl/Branches/PimsFamilyV7_1ER
}

function cd_nightly_build()
{
  cd /cygdrive/e/devl/ToolSrc/NightlyBuild
}

function cd_orion_env()
{
	cd ~/employee/current/productdir/orion/environment
}

function cd_orion_test()
{
	cd ~/employee/current/productdir/orion/test
}

function cd_scf_env()
{
	cd ~/employee/current/productdir/scf/environment
}

function cd_projects()
{
  cd ~/professional/projects
}
