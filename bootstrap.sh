#!/usr/bin/env bash
apt-get update
sudo apt-get install -y git
sudo apt-get install -y unzip
sudo apt-get install -y python-pip
pip install --upgrade pip setuptools
#sudo apt-get install -y chromium-browser

if ! [ -d /vagrant/google_appengine ]; then
	wget https://storage.googleapis.com/appengine-sdks/featured/google_appengine_1.9.27.zip
	unzip google_appengine_1.9.27.zip -d /vagrant
	ln -s /usr/local/bin/dev_appserver.py ~/dev_appserver.py
fi

if ! [ -d /vagrant/hd-events ]; then
	touch .autohdevents	
	cd /vagrant	
	git clone https://github.com/hackerdojo/hd-events.git 
	cd /vagrant/hd-events
	rm -r shared
	git submodule add git://github.com/hackerdojo/hd-shared.git shared
	git submodule add https://github.com/GoogleCloudPlatform/endpoints-proto-datastore
 	git submodule update --init	
	cd /vagrant
	mv /vagrant/hd-events/app.yaml /vagrant/hd-events/app.yaml.original
	cp /vagrant/app.yaml /vagrant/hd-events
	cp /vagrant/hdeventsapi.py /vagrant/hd-events
	cp -r /vagrant/hd-events/endpoints-proto-datastore/endpoints_proto_datastore /vagrant/hd-events
fi

chown -R $USER /vagrant
grep 'if \[ -f ~/.bashrc ]; then' /home/vagrant/.bash_profile || echo -e 'if [ -f ~/.bashrc ]; then\n  . ~/.bashrc\nfi' | tee -a /home/vagrant/.bash_profile
grep 'PATH=:/vagrant/google_appengine:/vagrant/hd-events' /home/vagrant/.profile || echo 'export PATH=$PATH:/vagrant/google_appengine:/vagrant/hd-events' | tee -a /home/vagrant/.profile
grep 'PATH=:/vagrant/google_appengine:/vagrant/hd-events' /home/vagrant/.bash_profile || echo 'export PATH=$PATH:/vagrant/google_appengine:/vagrant/hd-events' | tee -a /home/vagrant/.bash_profile

. ~/.bashrc





