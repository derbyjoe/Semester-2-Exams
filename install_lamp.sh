#!/bin/bash
sudo apt update && sudo apt upgrade -y
sudo apt install apache2 mysql-server php libapache2-mod-php php-mysql git -y

# Start and enable Apache and MySQL
sudo systemctl start apache2
sudo systemctl enable apache2
sudo systemctl start mysql
sudo systemctl enable mysql

# Clone your PHP application
git clone https://github.com/laravel/laravel.git /var/www/html/

# # Replace placeholder with actual path if necessary and set permissions
sudo chown -R www-data:www-data /var/www/html/
sudo chmod -R 755 /var/www/html/

# Restart Apache to apply changes
sudo systemctl restart apache2