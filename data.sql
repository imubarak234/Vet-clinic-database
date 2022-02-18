INSERT INTO animals VALUES (1, 'Agumon', '02-03-2020', 0, TRUE, 10.23);
INSERT INTO animals VALUES (2, 'Gabumon', '15-11-2018', 2, TRUE, 8);
INSERT INTO animals VALUES (3, 'Pikachu', '07-01-2021', 1, FALSE, 15.04);
INSERT INTO animals VALUES (4, 'Devimon', '12-05-2017', 5, TRUE, 11);

INSERT INTO animals VALUES (5, 'Charmander', '08-02-2020', 0, FALSE, -11);
INSERT INTO animals VALUES (6, 'Plantmon', '15-11-2020', 2, TRUE, -5.7);
INSERT INTO animals VALUES (7, 'Squirtle', '02-04-1993', 3, FALSE, -12.13);
INSERT INTO animals VALUES (8, 'Angemon', '12-01-2005', 1, TRUE, -45);
INSERT INTO animals VALUES (9, 'Boarmon', '07-01-2005', 7, TRUE, 20.4);
INSERT INTO animals VALUES (10, 'Blossom', '13-10-1998', 3, TRUE, 17);

INSERT INTO owners (FULL_NAME, AGE) VALUES ('Sam Smith', 34);
INSERT INTO owners (FULL_NAME, AGE) VALUES ('Jennifer Orwell', 19);
INSERT INTO owners (FULL_NAME, AGE) VALUES ('Bob', 45);
INSERT INTO owners (FULL_NAME, AGE) VALUES ('Melody Pond', 77);
INSERT INTO owners (FULL_NAME, AGE) VALUES ('Dean Winchester', 14);
INSERT INTO owners (FULL_NAME, AGE) VALUES ('Jodie Whittaker', 38);

INSERT INTO species (NAME) VALUES ('Pokemon');
INSERT INTO species (NAME) VALUES ('Digimon');

UPDATE animals SET species_id = 2 WHERE name LIKE '%mon';
UPDATE animals SET species_id = 1 WHERE species_id IS NULL;

UPDATE animals SET owner_id = 1 WHERE id = 1;
UPDATE animals SET owner_id = 2 WHERE id IN (2, 5);
UPDATE animals SET owner_id = 3 WHERE id IN (3, 7);
UPDATE animals SET owner_id = 4 WHERE id IN (9, 10, 6);
UPDATE animals SET owner_id = 5 WHERE id IN (8, 4);
