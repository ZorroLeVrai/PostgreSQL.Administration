-- UTILISATEUR postgres

--Création des utilisateurs
CREATE USER lecteur LOGIN PASSWORD 'pass123';
CREATE USER ecrivain LOGIN PASSWORD 'pass123';

--Création de la base
CREATE DATABASE mercredi;

--Création de la table
CREATE TABLE valeurs (val int);

--Droits aux utilisateurs
GRANT SELECT ON valeurs TO lecteur;
GRANT INSERT, UPDATE ON valeurs TO ecrivain;

--UTILISATEURS lecteur et ecrivain
SELECT * FROM valeurs;

INSERT INTO valeurs VALUES (1);

UPDATE valeurs SET val = 2;