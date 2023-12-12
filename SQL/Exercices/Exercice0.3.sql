--Commandes pour la création de la table
CREATE TABLE ex0_3 (
    id int,
    val char(2)
);

--Commandes pour la création des données
INSERT INTO ex0_3 VALUES (generate_series(1, 1000), 'AA');
INSERT INTO ex0_3 VALUES (generate_series(1001, 2000), 'BB');

--Exportation au format texte
COPY ex0_3 TO 'D:\Users\amine\Documents\GitHub\PostgreSQL.Administration\SQL\ex0_3.txt';

--Exportation au format CSV
COPY ex0_3 TO 'D:\Users\amine\Documents\GitHub\PostgreSQL.Administration\SQL\ex0_3.csv' CSV HEADER;

CREATE TABLE ex0_3_bis (
    id int,
    val char(2)
);

--Importation des données du format texte
COPY ex0_3_bis FROM 'D:\Users\amine\Documents\GitHub\PostgreSQL.Administration\SQL\ex0_3.txt';

--Importation des données du format CSV
COPY ex0_3_bis FROM 'D:\Users\amine\Documents\GitHub\PostgreSQL.Administration\SQL\ex0_3.csv' CSV HEADER;