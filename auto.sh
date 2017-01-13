#bin
yum -y install git automake gcc make curl-devel
git clone https://github.com/wolf9466/cpuminer-multi
cd cpuminer-multi
./autogen.sh
./configure CFLAGS="-O3"
make
make install
chmod +x Run.sh
chmod +x start
cd ..
mv Run.sh cpuminer-multi
mv start cpuminer-multi
cd cpuminer-multi
chmod +x Run.sh
chmpd +x start
./start
