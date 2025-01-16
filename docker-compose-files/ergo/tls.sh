cd /path/to/ergo
docker compose down
sudo rm /path/to/ergo/data/fullchain.pem
sudo rm /path/to/ergo/data/privkey.pem
sudo cp /etc/letsencrypt/live/irc.example.com/fullchain.pem /path/to/ergo/data
sudo cp /etc/letsencrypt/live/irc.example.com/privkey.pem /path/to/ergo/data
cd /path/to/ergo
docker compose up -d
# curl -m 10 --retry 5 https://hc-ping.com/
# the above is for healthchecks.io monitoring
# this script assumes you've configured the TLS certificates to auto renew every 3 months using cert-bot or some other utility
# set this in cron like this 24 1 17 2,5,8,11 * sudo bash /path/to/tls.sh
