sudo pip install -U git-sweep
sudo pip install -U git-review
# keystone development pieces...
sudo apt-get install -y python-virtualenv python-dev libxslt1-dev
sudo apt-get install -y libldap2-dev libsasl2-dev
# general 'make sure it's up to date'
sudo apt-get update
sudo apt-get dist-upgrade -y
# include bits for debian/ubuntu packaging
sudo apt-get install -y javahelper pbuilder dh-make
sudo apt-get autoremove -y
# pre-cache the pbuilder debbootstrap image
sudo pbuilder create
