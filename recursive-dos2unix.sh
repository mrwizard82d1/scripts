# Recursively walks the current directory finding all files and converting
# them to UNIX line endings

dos2unix $(for f in $(find -name '*' -type f) do
    file $f | grep -v '\.git' | grep 'CRLF' | sed -r 's|(.*):.*$|\1|'
done

