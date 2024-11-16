BASEDIR=$(dirname "$0")
DOTVIM=$BASEDIR/vimfiles
VIMFILES=$HOME/.vim
echo "Link ${VIMFILES} to ${DOTVIM}"
ln -s $DOTVIM $VIMFILES
