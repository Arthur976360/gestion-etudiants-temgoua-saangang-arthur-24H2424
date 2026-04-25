CREATE DATABASE IF NOT EXISTS etudiantsDB;

USE etudiantsDB;

CREATE TABLE IF NOT EXISTS etudiants (
    matricule   VARCHAR(10)     NOT NULL PRIMARY KEY,
    nom         VARCHAR(100)    NOT NULL,
    prenom      VARCHAR(100)    NOT NULL,
    date_naissance DATE,
    filiere     VARCHAR(100),
    sexe        ENUM('M', 'F')  NOT NULL,
    date_inscription DATETIME DEFAULT CURRENT_TIMESTAMP,

    INDEX idx_filiere (filiere)           
);
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50),
    password VARCHAR(50),
    role VARCHAR(10)
);

INSERT INTO users (username, password, role) VALUES
('admin', '1234', 'admin'),
('user', '0000', 'user');