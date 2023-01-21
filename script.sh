sudo mkdir -p $dirname
sudo cd $dirname
sudo touch $dirname/$filename
sudo chmod 777 $dirname/$filename
echo `ls /etc/`>$dirname/$filename
