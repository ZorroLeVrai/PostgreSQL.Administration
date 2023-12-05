CREATE TABLE client (
    client_id INT GENERATED ALWAYS AS IDENTITY,
    prenom VARCHAR(20) NOT NULL,
    CONSTRAINT pk_client_id PRIMARY KEY (client_id)
);

CREATE TABLE facture (
    facture_id INT GENERATED ALWAYS AS IDENTITY,
    titre VARCHAR(50) NOT NULL,
    client_id INT NOT NULL,
    CONSTRAINT pk_facture_id PRIMARY KEY (facture_id),
    CONSTRAINT fk_client_id FOREIGN KEY (client_id) REFERENCES client(client_id)
);


--CONSTRAINT pk_client_id PRIMARY KEY (eleve_id);