#bin
yum -y install git automake gcc make curl-devel
git clone https://github.com/wolf9466/cpuminer-multi
cd cpuminer-multi
./autogen.sh
./configure CFLAGS="-O3"
make
make install
chmod +x Run.sh
chmod +x pool
cd ..
mv Run.sh cpuminer-multi
mv pool cpuminer-multi
cd cpuminer-multi
./pool
