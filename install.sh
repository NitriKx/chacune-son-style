#
#   CHACUNE SON STYLE
#
#  Installation script from sratch for Kimsufi - Debian 9
#



#
#.  DOCKER
#

apt-get update

apt-get -y install \
     apt-transport-https \
     ca-certificates \
     curl \
     gnupg2 \
     software-properties-common

curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -

add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/debian \
    $(lsb_release -cs) \
    stable"

apt-get -y update

apt-get install -y docker-ce docker-compose

curl -L https://github.com/docker/compose/releases/download/1.21.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose


#
#.  ODOO
#

apt-get install -y git

git config --global credential.helper "cache --timeout=3600"

