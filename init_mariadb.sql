-- Création de la base de données
CREATE DATABASE IF NOT EXISTS webdb;
USE webdb;

-- Création de la table Site_Web
CREATE TABLE IF NOT EXISTS Site_Web (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(25)
);

-- Création de l'utilisateur tech (lecture seule)
CREATE USER IF NOT EXISTS 'tech'@'%' IDENTIFIED BY 'tech';
GRANT SELECT ON webdb.Site_Web TO 'tech'@'%';

-- Création de l'utilisateur Admin (droits root)
CREATE USER IF NOT EXISTS '{{db_user}}'@'%' IDENTIFIED BY '{{db_password}}';
GRANT ALL PRIVILEGES ON *.* TO '{{db_user}}'@'%' WITH GRANT OPTION;

-- Appliquer les changements
FLUSH PRIVILEGES;
