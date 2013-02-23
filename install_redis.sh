echo "Now will install Redis"
curl -O https://redis.googlecode.com/files/redis-2.6.9.tar.gz
tar zxf redis-2.6.9.tar.gz
cd redis-2.6.9
make && sudo make install
cd ..

curl -O https://raw.github.com/cgg5207/linux_sh/master/ubuntu/etc/redis.conf
curl -O https://raw.github.com/cgg5207/linux_sh/master/ubuntu/init.d/redis-server
sudo mv redis-server /etc/init.d/redis-server
sudo mv redis.conf /usr/local/etc/redis.conf
sudo chmod +x /etc/init.d/redis-server

sudo useradd redis
sudo mkdir -p /var/lib/redis
sudo mkdir -p /var/log/redis
sudo chown redis.redis /var/lib/redis
sudo chown redis.redis /var/log/redis

sudo rm -R redis-2.6.9
rm redis-2.6.9.tar.gz

echo "Redis install successed."
echo "-----------------------------------------------------------------------"
echo "Now install service to /etc/init.d ..."
echo "sudo /etc/init.d/redis-server start"




