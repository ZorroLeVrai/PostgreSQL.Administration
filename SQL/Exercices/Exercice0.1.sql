--Insertion dans la table client
INSERT INTO client (prenom) VALUES ('John');  --id: 5
INSERT INTO client (prenom) VALUES ('Jane');  --id: 6

--Insertion dans la table facture
INSERT INTO facture (client_id, libelle, prix) VALUES (5, 'AA', 12.3);
INSERT INTO facture (client_id, libelle, prix) VALUES (5, 'BB', 5);
INSERT INTO facture (client_id, libelle, prix) VALUES (6, 'CC', 17);
