echo "Installing Puppet Agent..."
apt-get -y install puppet
puppet resource service puppet ensure=running enable=true
puppet agent --enable
puppet agent --waitforcert 60 --test
