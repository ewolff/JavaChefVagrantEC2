export DEBIAN_FRONTEND=noninteractive
# Upgrade headlessly (this is only safe-ish on vanilla systems)
aptitude update &&
apt-get -o Dpkg::Options::="--force-confnew" \
    --force-yes -fuy dist-upgrade &&

aptitude install -y ruby1.9.1 ruby1.9.1-dev rubygems1.9.1 libopenssl-ruby1.9.1 make &&
sudo gem1.9.1 install --no-rdoc --no-ri chef --version 0.10.0

if [ -a /var/lib/gems/1.9.1/bin/chef-solo ]; then
   export CHEF_PATH=/var/lib/gems/1.9.1/bin/
fi;

if [ -a /usr/local/bin/chef-solo ]; then
   export CHEF_PATH=/usr/local/bin
fi;

$CHEF_PATH/chef-solo -c solo-ec2.rb -j dna.json