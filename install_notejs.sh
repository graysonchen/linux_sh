echo "------------------------------------------------------------------------"
echo "Now install Node.js..."
git clone git://github.com/ry/node.git
cd node
./configure
make && sudo make install
echo "Node.js install done."
echo "------------------------------------------------------------------------"
