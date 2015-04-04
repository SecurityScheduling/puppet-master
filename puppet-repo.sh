echo "Enabling Puppet Labs Package Repository..."
dpkg -i /vagrant/repo/puppetlabs-release-trusty.deb
apt-get update
echo "Installing Puppet Master Passenger..."
apt-get -y install puppetmaster-passenger
echo "Installing Puppet Master..."
apt-get -y install puppetmaster
echo "*" > /etc/puppet/autosign.conf
