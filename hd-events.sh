#!/bin/bash
hdevents () {
  cd /vagrant/hd-events
}
hdevents
#python deploy.py -f dev-server --host=0.0.0.0 --admin_host=0.0.0.0
#/vagrant/google_appengine/dev_appserver.py /vagrant/hd-events
python deploy.py -f dev-server






