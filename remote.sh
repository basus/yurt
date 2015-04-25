shopt -s dotglob
DIRECTORY=.yurt.tmp
TARBALL=.yurt.tar.gz
tar xzvf $TARBALL;
cp $DIRECTORY/* .
