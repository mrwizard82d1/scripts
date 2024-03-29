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
    alias bc="c:/PROGRA~1/Beyond Compare 4/BComp.exe"
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
    alias conda="C:/Users/larry.jones/Miniconda3/Lib/site-packages/conda/shell/bin/conda"
    alias cucumber='/cygdrive/c/tools/ruby26/bin/cucumber.bat'
    alias doxygen='/cygdrive/c/PROGRA~1/doxygen/bin/doxygen.exe'
    alias eclipse='/cygdrive/c/eclipse/eclipse.exe'
    alias eclipse_j2ee='/cygdrive/c/eclipse-j2ee/eclipse.exe'
    alias eject='~/professional/software/system/drivetools/EjectMedia.exe'
    alias elixir='/c/ProgramData/chocolatey/lib/Elixir/bin/elixir'
    alias elixirc='/c/ProgramData/chocolatey/lib/Elixir/bin/elixirc'
    # Installed 27.1 with scoops so it is on the path automatically.
    # alias emacs='/cygdrive/c/PROGRA~1/Emacs/x86_64/bin/runemacs.exe'
    alias erl='/cygdrive/c/PROGRA~1/erl6.2/bin/erl.exe -smp'
    alias erlc='/cygdrive/c/PROGRA~1/erl6.2/bin/erlc.exe'
    alias escript='/cygdrive/c/PROGRA~1/erl6.2/bin/escript.exe'
    alias find_grep='py -2 $(cygpath -w ~/professional/projects/pyutils/find_grep.py)'
    alias gem='/cygdrive/c/tools/ruby26/bin/gem'
    alias git='/cygdrive/c/PROGRA~1/Git/bin/git.exe'
    alias inst_profile='cp .bash_profile ~/.bash_profile'
    alias hg='/cygdrive/c/PROGRA~1/TortoiseHg/hg.exe'
    alias icucumber='/cygdrive/c/PROGRA~1/IRONRU~1.1/bin/cucumber.bat'
    alias iex='/c/ProgramData/chocolatey/lib/Elixir/bin/iex'
    alias iexw='/c/ProgramData/chocolatey/lib/Elixir/bin/iex --werl'
    alias igem='/cygdrive/c/PROGRA~1/IRONRU~1.1/bin/igem.bat'
    alias ilettuce='ipy $(cygpath -wd /cygdrive/c/PROGRA~1/IronPython\ 2.7/Lib/site-packages/lettuce/lettuce_cli.py)'
    alias iirb='/cygdrive/c/PROGRA~1/IRONRU~1.1/bin/iirb.bat'
    alias inosetests='ipy $(cygpath -wd /cygdrive/c/PROGRA~1/IronPython\ 2.7/Lib/site-packages/nose/core.py)'
    alias ipy='ipy27'
    alias ipy27='/cygdrive/c/PROGRA~1/IronPython\ 2.7/ipy.exe'
    alias ipycc='ipycc27'
    alias ipycc27='/cygdrive/c/PROGRA~1/IronPython\ 2.7/ipy.exe -X:TabCompletion -X:ColorfulConsole'
    alias ir='/cygdrive/c/PROGRA~1/IRONRU~1.1/bin/ir.exe'
    alias irake='/cygdrive/c/PROGRA~1/IRONRU~1.1/bin/rake.bat'
    alias irb='/cygdrive/c/tools/ruby26/bin/irb.bat'
    alias jar='/cygdrive/c/PROGRA~1/Java/jdk1.8.0_161/bin/jar.exe'
    alias java='/cygdrive/c/PROGRA~1/Java/jdk1.8.0_161/bin/java.exe'
    alias javac='/cygdrive/c/PROGRA~1/Java/jdk1.8.0_161/bin/javac.exe'
    alias lein='~/.local/bin/lein.bat'
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
    alias pip='pip3'
    alias pip2='/c/Python27/Scripts/pip'
    alias pip3='$HOME/AppData/Local/Programs/Python/Python38/Scripts/pip.exe'
    alias python='py -3'
    alias python2='py -2'
    alias python3='py -3'
    alias R='/cygdrive/c/PROGRA~1/R/R-3.0.2/bin/x64/Rgui.exe'
    alias rm_gen_bin='py $(cygpath -wa ~/professional/projects/pyutils/rm_gen_bin.py)'
    alias rm_usb='~/professional/software/system/drivetools/RemoveDrive.exe'
    alias roundup_admin='py -c "from roundup.scripts.roundup_admin import run; run()"'
    alias roundup_server='py -c "from roundup.scripts.roundup_server import run; run()"'
    alias rspec='/cygdrive/c/tools/ruby26/bin/rspec.bat'
    alias Rterm='/cygdrive/c/PROGRA~1/R/R-3.0.2/bin/x64/Rterm.exe'
    #    alias ruby='/cygdrive/c/tools/ruby26/bin/ruby.exe'
    alias save_clipboard_image='ipy $(cygpath -w ~/professional/projects/ipyutils/save_clipboard_image.py)'
    alias svn='/cygdrive/c/Program\ Files/TortoiseSVN/bin/svn.exe'
    alias vim='vim.bat'
    # alias vs_2012='cmd /c "start cmd /k $(cygpath -wa /cygdrive/c/PROGRA~2/MICROS~3.0/Common7/Tools/VsDevCmd.bat)"'
    alias werl='/cygdrive/c/PROGRA~1/erl6.2/bin/werl.exe'
    alias wjed='/cygdrive/c/PROGRA~2/JED/bin/wjed.exe'
elif [ ${SYS_NAME:0:10} == $MINGW_SYS_NAME ]; then
    # Do something under Windows NT platform
    alias ack='perl /c/PROGRA~3/CHOCOL~1/lib/STRAWB~1/Ack/tools/ack.pl'
    alias atom='/c/Users/larryj/AppData/Local/atom/bin/atom'
    alias bc='/c/PROGRA~1/Beyond\ Compare\ 4/BComp.exe'
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
    alias conda="C:/Users/larry.jones/Miniconda3/Lib/site-packages/conda/shell/bin/conda"
    alias cucumber='/c/tools/ruby26/bin/cucumber.bat'
    alias doxygen='/c/PROGRA~1/doxygen/bin/doxygen.exe'
    alias eclipse='/c/eclipse/eclipse.exe'
    alias eclipse_j2ee='/c/eclipse-j2ee/eclipse.exe'
    alias eject="$CYGHOME/professional/software/system/drivetools/EjectMedia.exe"
    alias elixir='/c/ProgramData/chocolatey/lib/Elixir/bin/elixir'
    alias elixirc='/c/ProgramData/chocolatey/lib/Elixir/bin/elixir'
    # Installed 27.1 with scoops so it is on the path automatically.
    # alias emacs='/c/PROGRA~1/Emacs/x86_64/bin/runemacs.exe'
    alias erl='/c/ProgramData/chocolatey/bin/erl -smp'
    alias erlc='/c/ProgramData/chocolatey/bin/erlc'
    alias escript='/c/ProgramData/chocolatey/bin/escript'
    alias find_grep="py -2 $HOME/professional/projects/pyutils/find_grep.py"
    alias gem='/c/tools/ruby27/bin/gem'
    alias hg='/c/PROGRA~1/TortoiseHg/hg.exe'
    alias hoverfly='c:/Users/larry.jones/professional/software/devtools/hoverfly/hoverfly.exe'
    alias hoverctl='c:/Users/larry.jones/professional/software/devtools/hoverfly/hoverctl.exe'
    alias inst_profile="cp .bash_profile $CYGHOME/.bash_profile"
    alias jed='/c/PROGRA~2/JED/bin/jed.exe'
    alias icucumber='/c/PROGRA~1/IRONRU~1.1/bin/cucumber.bat'
    alias iex='/c/ProgramData/chocolatey/lib/Elixir/bin/iex'
    alias iexw='/c/ProgramData/chocolatey/lib/Elixir/bin/iex --werl'
    alias igem='/c/PROGRA~1/IRONRU~1.1/bin/igem.bat'
#    alias ilettuce='ipy $(cygpath -wd /c/PROGRA~1/IronPython\ 2.7/Lib/site-packages/lettuce/lettuce_cli.py)'
    alias iirb='/c/PROGRA~1/IRONRU~1.1/bin/iirb.bat'
#    alias inosetests='ipy $(cygpath -wd /c/PROGRA~1/IronPython\ 2.7/Lib/site-packages/nose/core.py)'
    alias ipy='ipy27'
    alias ipy27='/c/PROGRA~1/IronPython\ 2.7/ipy.exe'
    alias ipycc='ipycc27'
    alias ipycc27='/c/PROGRA~1/IronPython\ 2.7/ipy.exe -X:TabCompletion -X:ColorfulConsole'
    alias ir='/c/PROGRA~1/IRONRU~1.1/bin/ir.exe'
    alias irake='/c/PROGRA~1/IRONRU~1.1/bin/rake.bat'
    # alias irb='cmd //c /c/tools/ruby26/bin/irb.bat'
    alias irb='/c/tools/ruby27/bin/irb'
    alias jar='/c/Program\ Files/OpenJDK/openjdk-11.0.7_10/bin/jar'
    alias java='/c/Program\ Files/OpenJDK/jdk-14.0.1/bin/java'
    alias javac='/c/Program\ Files/OpenJDK/jdk-14.0.1/bin/javac'
    alias lein='/c/Users/larry.jones/.local/bin/lein'
    alias lettuce='/c/Python27/Scripts/lettuce.exe'
    alias meld="/c/PROGRA~2/Meld/Meld.exe"
    alias mix='/c/ProgramData/chocolatey/lib/Elixir/bin/mix'
    alias mongo='/c/PROGRA~1/MongoDB/Server/4.0/bin/mongo.exe'
#    alias name_2_ip_addr="ipy $(cygpath -w $CYGHOME/professional/projects/ipyutils/name_to_ip_addr.py)"
    alias nant=/c/PROGRA~2/nant-0.92/bin/nant
    alias nosetests=/c/Python27/Scripts/nosetests.exe
    alias path2list="py $(cygpath $HOME/professional/projects/pyutils/path2list.py)"
#    alias path2svnurl="py $(cygpath $HOME/professional/projects/pyutils/dirname_to_svn_url.py)"
    alias pip='pip3'
    alias pip2='/c/Python27/Scripts/pip'
    alias pip3='$HOME/AppData/Local/Programs/Python/Python38/Scripts/pip.exe'
    alias python='py -3'
    alias python2='py -2'
    alias python3='py -3'
    alias R='"C:/Program Files/R/R-4.1.2/bin/x64/Rgui.exe" --cd-to-userdocs'
    alias rspec='/c/tools/ruby26/bin/rspec.bat'
    alias Rterm='"C:/Program Files/R/R-4.1.2/bin/x64/Rterm.exe"'
    alias rm_gen_bin="py $(cygpath $HOME/professional/projects/pyutils/rm_gen_bin.py)"
#    alias save_clipboard_image="ipy $(cygpath -w $CYGHOME/professional/projects/ipyutils/save_clipboard_image.py)"
    alias svn='/c/Program\ Files/TortoiseSVN/bin/svn.exe'
    alias werl='/c/ProgramData/chocolatey/bin/werl'
    alias zip_dirname="py -2 $HOME/professional/projects/pyutils/zip_dirname.py"

    # Git aliases copied from babun
    alias g=git
    alias ga='git add'
    alias gaa='git add --all'
    alias gap='git apply'
    alias gapa='git add --patch'
    alias gau='git add --update'
    alias gav='git add --verbose'
    alias gb='git branch'
    alias gbD='git branch -D'
    alias gba='git branch -a'
    alias gbd='git branch -d'
    alias gbda='git branch --no-color --merged | command grep -vE "^(\*|\s*(master|develop|dev)\s*$)" | command xargs -n 1 git branch -d'
    alias gbl='git blame -b -w'
    alias gbnm='git branch --no-merged'
    alias gbr='git branch --remote'
    alias gbs='git bisect'
    alias gbsb='git bisect bad'
    alias gbsg='git bisect good'
    alias gbsr='git bisect reset'
    alias gbss='git bisect start'
    alias gc='git commit -v'
    alias 'gc!'='git commit -v --amend'
    alias gca='git commit -v -a'
    alias 'gca!'='git commit -v -a --amend'
    alias gcam='git commit -a -m'
    alias 'gcan!'='git commit -v -a --no-edit --amend'
    alias 'gcans!'='git commit -v -a -s --no-edit --amend'
    alias gcb='git checkout -b'
    alias gcd='git checkout develop'
    alias gcf='git config --list'
    alias gcl='git clone --recurse-submodules'
    alias gclean='git clean -fd'
    alias gcm='git checkout master'
    alias gcmsg='git commit -m'
    alias 'gcn!'='git commit -v --no-edit --amend'
    alias gco='git checkout'
    alias gcount='git shortlog -sn'
    alias gcp='git cherry-pick'
    alias gcpa='git cherry-pick --abort'
    alias gcpc='git cherry-pick --continue'
    alias gcs='git commit -S'
    alias gcsm='git commit -s -m'
    alias gd='git diff'
    alias gdca='git diff --cached'
    alias gdct='git describe --tags `git rev-list --tags --max-count=1`'
    alias gdcw='git diff --cached --word-diff'
    alias gds='git diff --staged'
    alias gdt='git diff-tree --no-commit-id --name-only -r'
    alias gdw='git diff --word-diff'
    alias gf='git fetch'
    alias gfa='git fetch --all --prune'
    alias gfo='git fetch origin'
    alias gg='git gui citool'
    alias gga='git gui citool --amend'
    alias ggpull='git pull origin "$(git_current_branch)"'
    alias ggpush='git push origin "$(git_current_branch)"'
    alias ggsup='git branch --set-upstream-to=origin/$(git_current_branch)'
    alias ghh='git help'
    alias gignore='git update-index --assume-unchanged'
    alias gignored='git ls-files -v | grep "^[[:lower:]]"'
    alias git-svn-dcommit-push='git svn dcommit && git push github master:svntrunk'
    alias gk='\gitk --all --branches'
    alias gke='\gitk --all $(git log -g --pretty=%h)'
    alias gl='git pull'
    alias glg='git log --stat'
    alias glgg='git log --graph'
    alias glgga='git log --graph --decorate --all'
    alias glgm='git log --graph --max-count=10'
    alias glgp='git log --stat -p'
    alias glo='git log --oneline --decorate'
    alias glod='git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset'\'
    alias glodi='git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset'\'' --date=iso8601'
    alias glods='git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset'\'' --date=short'
    alias glog='git log --oneline --decorate --graph'
    alias gloga='git log --oneline --decorate --graph --all'
    alias glol='git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'
    alias glola='git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --all'
    alias glols='git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --stat'
    alias glp=_git_log_prettily
    alias glum='git pull upstream master'
    alias gm='git merge'
    alias gma='git merge --abort'
    alias gmom='git merge origin/master'
    alias gmt='git mergetool --no-prompt'
    alias gmtvim='git mergetool --no-prompt --tool=vimdiff'
    alias gmum='git merge upstream/master'
    alias gp='git push'
    alias gpd='git push --dry-run'
    alias gpf='git push --force-with-lease'
    alias 'gpf!'='git push --force'
    alias gpoat='git push origin --all && git push origin --tags'
    alias gpristine='git reset --hard && git clean -dfx'
    alias gpsup='git push --set-upstream origin $(git_current_branch)'
    alias gpu='git push upstream'
    alias gpv='git push -v'
    alias gr='git remote'
    alias gra='git remote add'
    alias grb='git rebase'
    alias grba='git rebase --abort'
    alias grbc='git rebase --continue'
    alias grbd='git rebase develop'
    alias grbi='git rebase -i'
    alias grbm='git rebase master'
    alias grbs='git rebase --skip'
    alias grep='grep  --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}'
    alias grh='git reset'
    alias grhh='git reset --hard'
    alias grm='git rm'
    alias grmc='git rm --cached'
    alias grmv='git remote rename'
    alias grrm='git remote remove'
    alias grset='git remote set-url'
    alias grs='git restore'
    alias grss='git restore --source'
    alias grsst='git restore --staged'
    alias grt='cd $(git rev-parse --show-toplevel || echo ".")'
    alias gru='git reset --'
    alias grup='git remote update'
    alias grv='git remote -v'
    alias gsb='git status -sb'
    alias gsd='git svn dcommit'
    alias gsh='git show'
    alias gsi='git submodule init'
    alias gsps='git show --pretty=short --show-signature'
    alias gsr='git svn rebase'
    alias gss='git status -s'
    alias gst='git status'
    alias gsta='git stash push'
    alias gstaa='git stash apply'
    alias gstall='git stash --all'
    alias gstc='git stash clear'
    alias gstd='git stash drop'
    alias gstl='git stash list'
    alias gstp='git stash pop'
    alias gsts='git stash show --text'
    alias gstu='git stash --include-untracked'
    alias gsu='git submodule update'
    alias gts='git tag -s'
    alias gtv='git tag | sort -V'
    alias gunignore='git update-index --no-assume-unchanged'
    alias gunwip='git log -n 1 | grep -q -c "\-\-wip\-\-" && git reset HEAD~1'
    alias gup='git pull --rebase'
    alias gupa='git pull --rebase --autostash'
    alias gupav='git pull --rebase --autostash -v'
    alias gupv='git pull --rebase -v'
    alias gwch='git whatchanged -p --abbrev-commit --pretty=medium'
    alias gwip='git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit --no-verify -m "--wip-- [skip ci]"'

fi

# Aliases commont to both Cygwin and MWING64
if [[ ${SYS_NAME:7:2} == "NT" || ${SYS_NAME:8:2} == "NT" ]]; then
    # Do something for cygwin and msys
    alias aspell='/c/PROGRA~2/Aspell/bin/aspell.exe'
	alias glodi='git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset'\'' --date=iso8601'
fi

# Launch Zsh
# The expression, `-t 1`, in `zsh` tests if file descriptor 1 is open and associated with a terminal
if [ -t 1 ]; then
exec zsh
fi

