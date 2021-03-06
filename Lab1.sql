--Task 0: Drop the table INSTRUCTOR from the database in case it already exists, so that we start from a clean state.
DROP TABLE INSTRUCTOR ;

--Task 1: Create the INSTRUCTOR table as defined above. Have the ins_id be the primary key, and ensure the lastname and firstname are not null.
CREATE TABLE INSTRUCTOR(
	ins_id INTEGER PRIMARY KEY NOT NULL, 
  lastname VARCHAR(15) NOT NULL, 
  firstname VARCHAR(15) NOT NULL, 
  city VARCHAR(15), 
  country CHAR(2)) ;

--Task 2A: Insert one row into the INSTRUCTOR table for the the instructor Rav Ahuja.
INSERT INTO INSTRUCTOR (ins_id, lastname, firstname, city, country)
	VALUES (1, 'AHUJA', 'RAV', 'Toronto', 'CA') ;

--Task 2B: Insert two rows at once in the INSTRUCTOR table for instructors Raul Chong and Hima Vasudevan.
INSERT INTO INSTRUCTOR (ins_id, lastname, firstname, city, country)
	VALUES (2, 'Chong', 'Raul', 'Toronto', 'CA'),
					(3, 'Vasundevan', 'Hima', 'Chicago', 'US') ;

--Task 3: Select all rows from the INSTRUCTOR table.
SELECT * FROM INSTRUCTOR ;

--Task 3B: Select the firstname, lastname and country where the city is Toronto
SELECT firstname, lastname, country
	FROM INSTRUCTOR
	WHERE city = 'Toronto' ;

--Task 4: Update the row for Rav Ahuja and change his city to Markham.
UPDATE INSTRUCTOR
	SET city = 'Markham'
	WHERE ins_id = 1 ;

--Task 5: Delete the row for Raul Chong from the table.
DELETE FROM INSTRUCTOR
	WHERE ins_id = 2 ;

--Task 5B: Retrieve all rows in the INSTRUCTOR table
SELECT * FROM INSTRUCTOR
