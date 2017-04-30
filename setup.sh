#!/bin/sh
sudo apt-get update
sudo apt-get install cmake build-essential libboost-all-dev git screen curl -y
git clone --recursive https://github.com/kost/nheqminer.git
cd nheqminer/nheqminer
mkdir build
cd build
cmake -DXENON=2 ..
make
sudo cp nheqminer /usr/bin
cd ~
touch ~/launch.sh
sudo chmod +x ~/launch.sh

echo "#!/bin/sh" >> ~/launch.sh
#echo "ps auxw | grep nheqminer | grep -v grep > /dev/null" >> ~/launch.sh
#echo "if [ \$? != 0 ]" >> ~/launch.sh
#echo "then" >> ~/launch.sh
echo "        nheqminer -l zec-us.suprnova.cc:2142 -u awratten.HIVE -p x -t 6" >> ~/launch.sh
#echo "fi" >> ~/launch.sh

#echo "* * * * * root ~/launch.sh" >> /etc/crontab

screen ./launch.sh



#./nheqminer -l zec.suprnova.cc:2142 -u t1XahugqJM2WPQ4zLdZiVjirRkG2yBz9AFS -p x