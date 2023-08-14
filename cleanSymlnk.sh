read -p "which file to delete symlinks from? ~/" PLACE
find "$HOME/$PlACE" -xtype l -delete
