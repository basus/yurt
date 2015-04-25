#/bin/bash
set -e

DIRECTORY=.yurt.tmp
FILES=(~/.gitconfig  ~/.tmux.conf)
TARBALL=.yurt.tar.gz

if [ -d "$DIRECTORY" ]; then
   echo "Cleaning out Yurt temporary directory";
   rm -rf $DIRECTORY;
fi;

mkdir $DIRECTORY;
echo "Reading config file list"
for f in $FILES
do
    echo "Copying " $f;
    cp $f $DIRECTORY
done;

tar czvf $TARBALL $DIRECTORY/;

scp $TARBALL $1:;
scp remote.sh $1:yurt.remote;
ssh $1 "chmod +x yurt.remote; ./yurt.remote";
ssh $1
