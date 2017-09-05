apt-get update
apt-get install -y automake libcurl4-openssl-dev git make build-essential

git clone https://github.com/wolf9466/cpuminer-multi
cd cpuminer-multi && ./autogen.sh && ./configure CFLAGS="-O3" && make

touch start.sh && chmod 777 start.sh
echo "./cpuminer-multi/minerd -a cryptonight -o stratum+tcp://xmr.pool.minergate.com:45560 -u awratten1@gmail.com -p x -t 7" >> start.sh
