#does not work

visit_dir() {
    echo "entered on $1"
    sourcedir=$1
    destination=$2
    for file in $(ls -A $1);
    do
	echo $file
	if [ -d "$sourcedir/$file" ];
	then
	    echo "visiting $sourcedir/$file"
	    visit_dir "$sourcedir/$file" "$destination/$file"
	else
	    echo "     dir $sourcedir file $file destination dir $destination"
	   # mkdir -p $destination
	    # ln -s "$sourcedir/$file" "$destination/$file"  
	    # use basename to copy 
	    # bat "$sourcedir/$file"
	fi
    done
}

visit_dir "/home/$USER/dotfiles/home" "/home/$USER"
