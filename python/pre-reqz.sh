wget http://python-distribute.org/distribute_setup.py
wget https://raw.github.com/pypa/pip/master/contrib/get-pip.py

sudo python distribute_setup.py
sudo python get-pip.py

sudo pip install setuptools

sudo apt-get install python-dev build-essential libatlas-base-dev gfortran libfreetype6-dev libpng-dev

sudo pip install --upgrade setuptools
