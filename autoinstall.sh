apt install -y vim
apt install -y Wget
apt install -y  htop
apt install -y tmux
apt install -y php5.6-cli php5.6-fpm \
apt install -y nginx 
apt install -y nginx 

sudo sed -i 's/listen 80;/listen 80;/' /etc/nginx/sites-available/default
sudo systemctl restart nginx
curl http://localhost:80

sudo apt install apache2 -y
sudo sed -i 's/Listen 80/Listen 8888/' /etc/apache2/ports.conf
sudo systemctl restart apache2
curl http://localhost:8888
