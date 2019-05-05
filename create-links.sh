visit_dir() {
    echo "entered on $1"
    for file in $(ls -A $1);
    do
	if [ -d "$1/$file" ];
	then
	    echo "visiting $1/$file"
	    visit_dir "$1/$file"
	else
	    echo " dir $1 file $file"
	    # use basename to copy 
	    bat "$1/$file"
	fi
    done
}

visit_dir "/home/$USER/dotfiles/home"
