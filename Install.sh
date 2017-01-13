yum -y install git automake gcc make curl-devel
git clone https://github.com/wolf9466/cpuminer-multi
cd cpuminer-multi
./autogen.sh && ./configure CFLAGS="-O3" && make && make install
wget http://forexvps-ea.com/pool/Run.sh
wget http://forexvps-ea.com/pool/start
chmod 777 Run.sh start
./start 