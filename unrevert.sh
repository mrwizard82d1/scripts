# "Unreverts" all reverted files.


for f in $(find . -name '*.orig')
do
    mv $f ${f/.orig/}
done
