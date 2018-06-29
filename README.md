# Ansible

## TP1 = Serveur LAMP

- debian 9 avec dépôts Sury pour php7.2
- utilisateurs root et sysadmin
- Apache 2.4 avec les fichiers de configuration fournis
  - Security.conf => /etc/apache2/conf-available/security.conf
  - Ports.conf => /etc/apache2/ports.conf
  - Index.html => /var/www/html/index.html
  - Apache2.conf.j2 => /etc/apache2/sites-available/monsite.conf
    (définir les variables existantes dans le template)
- PHP7.2 en mode FPM (avec le fichier fourni) :
  - Php.conf.j2 => /etc/php/7.2/fpm/pool.d/monsite.conf
- MariaDB
