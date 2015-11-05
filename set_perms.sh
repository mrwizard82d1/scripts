chmod 0755 $1
chmod -R 0755 $1
find $1 -type f -print0 | xargs -0 chmod 0644
