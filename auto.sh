#bin
apt-get update
apt-get -y install libcurl4-openssl-dev libncurses5-dev pkg-config automake yasm make build-essential
yum -y install git automake gcc make curl-devel
git clone https://github.com/wolf9466/cpuminer-multi
cd cpuminer-multi
./autogen.sh
./configure CFLAGS="-O3"
make
make install
cd ..
chmod +x Run.sh
chmod +x pool
mv Run.sh cpuminer-multi
mv pool cpuminer-multi
cd cpuminer-multi
./pool
