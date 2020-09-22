DROP TABLE instructor;
CREATE TABLE instructor(
	ins_id INTEGER PRIMARY KEY NOT NULL,
	lastname VARCHAR(10) NOT NULL,
	firstname VARCHAR(10) NOT NULL,
	city VARCHAR(10),
	country CHAR(2)
	);
    
INSERT INTO instructor
	(ins_id, lastname, firstname, city, country)
	VALUES
	(1, 'Ahuja', 'Rav', 'Toronto', 'CA');
    
INSERT INTO instructor
	VALUES
    (2, 'Chong', 'Raul', 'Toronto', 'CA'),
	(3, 'Vasudevan', 'Hima', 'Chicago', 'US');
    
SELECT * 
	FROM instructor;

SELECT lastname, firstname, country 
	FROM instructor
	WHERE city = 'Toronto';
	
UPDATE instructor
	SET city = 'Markham'
	WHERE ins_id = 1;
	
DELETE 
	FROM instructor 
	WHERE ins_id in (2);
	
SELECT * 
	FROM instructor;