curl -O http://downloads.mongodb.org/linux/mongodb-linux-x86_64-2.2.3.tgz
tar -zxvf mongodb-linux-x86_64-2.2.3.tgz
sudo mkdir /usr/local/mongodb
sudo cp -rf mongodb-linux-x86_64-2.2.3/bin /usr/local/mongodb/
sudo ln -s /usr/local/mongodb/bin/mongo* /usr/local/bin/
rm -R mongodb-linux-x86_64-2.2.3

sudo useradd mongodb
sudo mkdir /var/lib/mongodb
sudo mkdir /var/log/mongodb
sudo chown -R mongodb /var/lib/mongodb
sudo chown -R mongodb /var/log/mongodb
curl -O https://raw.github.com/cgg5207/linux_sh/master/ubuntu/init.d/mongodb
sudo mv mongodb /etc/init.d/mongodb
sudo chmod 777 /etc/init.d/mongodb
sudo update-rc.d mongodb defaults
echo "Mongodb install successed."
echo "sudo /etc/init.d/mongodb start"
echo "-------------------------------------------------------------------"

