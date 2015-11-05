#! bash

# Makes a (Unix) classpath from its arguments.

CPS=$(cygpath -w $1)
shift
for f in $@
do
    CPS=$CPS:$(cygpath -w $f)
done
echo $(cygpath -wp $CPS)

