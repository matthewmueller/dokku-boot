### Add additional swap space

if [[ ! -f /extraswap ]]; then
    echo "===> Adding 2GB of extraswap"
    dd if=/dev/zero of=/extraswap bs=1M count=2000
    mkswap /extraswap
    echo "/extraswap         none            swap    sw                0       0" >> /etc/fstab
    swapon -a
    echo "<=== Added 2GB of extraswap"
fi

### Updating the Ubuntu package list

echo "===> Updating Ubuntu packages"
apt-get update -qq
echo "<=== Updated Ubuntu packages"

### Upgrade Dokku

echo "===> Upgrading Dokku and Herokuish"
apt-get install -qq -y dokku
apt-get install -qq -y herokuish
echo "<=== Upgrading Dokku and Herokuish"

### Install Let's Encrypt

echo "===> Installing Let's Encrypt"
dokku plugin:install https://github.com/dokku/dokku-letsencrypt.git letsencrypt
echo "<=== Installed Let's Encrypt"

### Install Postgres

echo "===> Installing Postgres"
dokku plugin:install https://github.com/dokku/dokku-postgres.git postgres
echo "<=== Installed Postgres"
