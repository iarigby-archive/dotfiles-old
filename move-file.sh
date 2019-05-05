destination=~/dotfiles/home/$1
file=$1/$2
mkdir -p $destination
mv ~/$file $destination/
ln -s ~/dotfiles/home/$file ~/$file
