--Effectuez un dump de la base de données au format binaire
pg_dump -U postgres -d nano -Fc > dump_nano.dump

--Supprimez la base de données
dropdb -U postgres nano

--Création de la base de données
createdb -U postgres nano

--Importez le dump à l'aide de pg_restore
pg_restore -d nano -U postgres dump_nano.dump