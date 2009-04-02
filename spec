# script to invoke (r)spec.
#
# This script is based on the approach taken by the Ruby gems package.
# The gem package creates a shell script, a .bat file and a .cmd file
# in the RUBY_HOME/bin directory. The shell script simply invokes ruby
# and feeds itself to ruby. The batch file does the same.
#
# To make this shell script work, I created a file named spec.bat in
# the RUBY_HOME/bin directory, copied the spec shell script into it,
# and edited the "prologue" and "epilogue" (non-ruby portions) to fit
# the DOS batch "language."
#
# This seemingly convoluted approach allows me to use the command
# "spec --version" in cygwin; without this batch file, executing this
# command from a bash shell results in an error like ruby not found.
# (Perhaps invoking this script to invoke another shell script results
# in the cygwin copy of ruby being invoked.)
#
# Larry Jones 2009-01-28


/cygdrive/c/ruby/bin/spec.bat "$@"


