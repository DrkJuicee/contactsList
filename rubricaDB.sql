DROP DATABASE if EXISTS RubricaDB;
CREATE database if not EXISTS RubricaDB;
USE RubricaDB;

DROP TABLE IF EXISTS BuddyList;
CREATE TABLE IF NOT EXISTS BuddyList (
    id INT AUTO_INCREMENT PRIMARY KEY,
    firstname VARCHAR(50) NOT NULL,
    lastname VARCHAR(50) NOT NULL,
    bDay DATE NOT NULL
);	

DROP TABLE IF EXISTS telefono;
CREATE TABLE IF NOT EXISTS telefono(
    id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    telCasa varchar(15) NOT NULL,
    cellulare varchar(15) NOT NULL,
    fk_buddylist INT,
    FOREIGN KEY (fk_buddylist) REFERENCES BuddyList(id)
);

DROP TABLE IF EXISTS email;
CREATE TABLE IF NOT EXISTS email(
    id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    emailAz varchar(35) NOT NULL,
    emailPers varchar(35) NOT NULL,

    fk_buddylist INT,
    FOREIGN KEY (fk_buddylist) REFERENCES BuddyList(id)
);

DROP TABLE IF EXISTS address;
CREATE TABLE IF NOT EXISTS address(
    id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    residentialAdd varchar(50) NOT NULL,
    ApartmentAdd varchar(50) NOT NULL,
    zipCode varchar(5) NOT NULL    
);

DROP TABLE IF EXISTS social;
CREATE TABLE IF NOT EXISTS social(
    id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    instagram varchar(25) NOT NULL,
    facebook varchar(25) NOT NULL,
    tinder varchar(25) NOT NULL,
    linkedin varchar(25) NOT NULL,
    github varchar(25) NOT NULL
);