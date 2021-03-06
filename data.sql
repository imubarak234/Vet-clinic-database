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

INSERT INTO specialization (VETS_ID, SPECIES_ID) VALUES (1,1);
INSERT INTO specialization (VETS_ID, SPECIES_ID) VALUES (3,1);
INSERT INTO specialization (VETS_ID, SPECIES_ID) VALUES (3,2);
INSERT INTO specialization (VETS_ID, SPECIES_ID) VALUES (4,2);

INSERT INTO vets (NAME, AGE, DATE_OF_GRADUATION) VALUES ('Vet William Tatcher', 45, '23-04-2000');
INSERT INTO vets (NAME, AGE, DATE_OF_GRADUATION) VALUES ('Vet Maisy Smith', 26, '17-01-2019');
INSERT INTO vets (NAME, AGE, DATE_OF_GRADUATION) VALUES ('Vet Stephanie Mendez', 64, '04-05-1981');
INSERT INTO vets (NAME, AGE, DATE_OF_GRADUATION) VALUES ('Vet Jack Harkness', 38, '08-05-2008');

INSERT INTO visits (ANIMALS_ID, VETS_ID, DATE_OF_VIST) VALUES (1, 1, '24-05-2020');
INSERT INTO visits (ANIMALS_ID, VETS_ID, DATE_OF_VIST) VALUES (1, 3, '22-07-2020');
INSERT INTO visits (ANIMALS_ID, VETS_ID, DATE_OF_VIST) VALUES (2, 4, '02-02-2021');
INSERT INTO visits (ANIMALS_ID, VETS_ID, DATE_OF_VIST) VALUES (5, 2, '05-01-2020');
INSERT INTO visits (ANIMALS_ID, VETS_ID, DATE_OF_VIST) VALUES (5, 2, '08-03-2020');
INSERT INTO visits (ANIMALS_ID, VETS_ID, DATE_OF_VIST) VALUES (5, 2, '14-05-2020');
INSERT INTO visits (ANIMALS_ID, VETS_ID, DATE_OF_VIST) VALUES (3, 3, '04-05-2021');
INSERT INTO visits (ANIMALS_ID, VETS_ID, DATE_OF_VIST) VALUES (9, 4, '24-02-2021');
INSERT INTO visits (ANIMALS_ID, VETS_ID, DATE_OF_VIST) VALUES (7, 2, '21-12-2019');
INSERT INTO visits (ANIMALS_ID, VETS_ID, DATE_OF_VIST) VALUES (7, 1, '10-08-2020');
INSERT INTO visits (ANIMALS_ID, VETS_ID, DATE_OF_VIST) VALUES (7, 2, '07-04-2021');
INSERT INTO visits (ANIMALS_ID, VETS_ID, DATE_OF_VIST) VALUES (10, 3, '29-09-2019');
INSERT INTO visits (ANIMALS_ID, VETS_ID, DATE_OF_VIST) VALUES (1, 4, '03-10-2020');
INSERT INTO visits (ANIMALS_ID, VETS_ID, DATE_OF_VIST) VALUES (1, 4, '04-11-2020');
INSERT INTO visits (ANIMALS_ID, VETS_ID, DATE_OF_VIST) VALUES (4, 2, '24-01-2019');
INSERT INTO visits (ANIMALS_ID, VETS_ID, DATE_OF_VIST) VALUES (4, 2, '15-05-2019');
INSERT INTO visits (ANIMALS_ID, VETS_ID, DATE_OF_VIST) VALUES (4, 2, '27-02-2019');
INSERT INTO visits (ANIMALS_ID, VETS_ID, DATE_OF_VIST) VALUES (4, 2, '03-08-2020');
INSERT INTO visits (ANIMALS_ID, VETS_ID, DATE_OF_VIST) VALUES (6, 3, '24-05-2020');
INSERT INTO visits (ANIMALS_ID, VETS_ID, DATE_OF_VIST) VALUES (6, 1, '11-01-2021');


UPDATE specialization SET both_species = TRUE WHERE id = 2;
UPDATE specialization SET both_species = TRUE WHERE id = 3;
UPDATE specialization SET species_name = 'Pokemon' WHERE id = 1;
UPDATE specialization SET species_name = 'Pokemon' WHERE id = 2;
UPDATE specialization SET species_name = 'Digimon' WHERE id = 3;
UPDATE specialization SET species_name = 'Digimon' WHERE id = 4;

insert into owners (full_name, email) select 'Owner ' || generate_series(1,2500000), 'owner_' || generate_series(1,2500000) || '@mail.com';
INSERT INTO visits (animals_id, vets_id, date_of_vist) SELECT * FROM (SELECT id FROM animals) animal_ids, (SELECT id FROM vets) vets_ids, generate_series('1980-01-01'::timestamp, '2021-01-01', '4 hours') visit_timestamp;
