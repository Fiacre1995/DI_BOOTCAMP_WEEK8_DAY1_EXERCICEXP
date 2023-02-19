-- Database: public

-- DROP DATABASE IF EXISTS public;

CREATE DATABASE public
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'French_France.1252'
    LC_CTYPE = 'French_France.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
	
	
	-- creattion des tables --
	
	CREATE TABLE items (
		item_id SERIAL PRIMARY KEY,
		libellé VARCHAR(50) NOT NULL,
		prix NUMERIC NOT NULL
	);
	
	
	CREATE TABLE clients (
		client_id SERIAL PRIMARY KEY,
		nom VARCHAR(50) NOT NULL,
		prenoms VARCHAR(100) NOT NULL
	);
	
	-- Ajouter des données aux tables --
	
	INSERT INTO items (libellé, prix) 
	VALUES ('petit bureau', 100),
		   ('grand bureau', 100),
		   ('ventilateur', 80);
		   
	INSERT INTO clients (nom, prenoms) 
	VALUES ('Greg', 'John'),
		   ('Sandra', 'Jones'),
		   ('Scott', 'Scott'),
		   ('Trevor', 'Vert'),
		   ('Mélanie', 'Johnson');
		   
	-- requetes --
	
	SELECT * FROM items
	
	SELECT * FROM items WHERE prix > 80
	
	SELECT * FROM items WHERE prix <= 300
	
	SELECT * FROM clients WHERE nom = 'Smith'
	
	SELECT * FROM clients WHERE nom = 'Jones'
	
	SELECT * FROM clients WHERE prenoms NOT IN('Scott')
	
	SELECT * FROM clients
	