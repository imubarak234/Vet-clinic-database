SELECT * FROM animals WHERE name LIKE '%mon';
SELECT name FROM animals WHERE date_of_birth BETWEEN '01-01-2016' AND '01-01-2019';
SELECT name FROM animals WHERE neutered = TRUE AND escape_attempts < 3;
SELECT date_of_birth FROM animals WHERE name = 'Agumon' OR name = 'Pikachu';
SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;
FROM animals WHERE neutered = TRUE;
SELECT * FROM animals WHERE name != 'Gabumon';
SELECT * FROM animals WHERE weight_kg >= 10.4 AND weight_kg <= 17.3;


BEGIN;
UPDATE animals SET species = 'unspecified';
SELECT * FROM animals;
ROLLBACK;


BEGIN;
UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
UPDATE animals SET species = 'pokemon' WHERE species IS NULL;
COMMIT;
SELECT * FROM animals;


BEGIN;
DELETE FROM animals;
ROLLBACK;
SELECT * FROM animals;


BEGIN;
DELETE FROM animals WHERE date_of_birth > '01-01-2022';
SAVEPOINT save1;
UPDATE animals set weight_kg = weight_kg * -1;
ROLLBACK TO save1;
UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;
COMMIT;


SELECT COUNT(*) FROM animals;
SELECT COUNT(escape_attempts) FROM animals WHERE escape_attempts = 0;
SELECT AVG(weight_kg) FROM animals;
SELECT neutered, COUNT(escape_attempts) FROM animals WHERE escape_attempts > 0 GROUP BY neutered;
SELECT species, MIN(weight_kg), MAX(weight_kg) FROM animals GROUP BY species;
SELECT species, AVG(escape_attempts) FROM animals WHERE date_of_birth BETWEEN '01-01-1990' AND '01-01-2000' GROUP BY species;

SELECT full_name, name, owner_id FROM animals INNER JOIN owners ON animals.owner_id = owners.id WHERE full_name = 'Melody Pond';
SELECT animals.name, species.name, weight_kg FROM animals INNER JOIN species ON animals.species_id = species.id WHERE species.name = 'Pokemon';
SELECT owners.full_name, animals.name From owners LEFT JOIN animals ON owners.id = animals.owner_id;
SELECT species.name, COUNT(species.name) FROM species LEFT JOIN animals ON species.id = animals.species_id GROUP BY species.name;
SELECT animals.name, owners.full_name FROM owners LEFT JOIN animals ON owners.id = animals.owner_id WHERE owners.full_name = 'Jennifer Orwell' AND animals.species_id = 2;
SELECT animals.name, owners.full_name FROM owners LEFT JOIN animals ON owners.id = animals.owner_id WHERE owners.full_name = 'Dean Winchester' AND animals.escape_attempts = 0;
SELECT owners.full_name, COUNT(animals.owner_id) FROM owners LEFT JOIN animals ON owners.id = animals.owner_id GROUP BY owners.full_name;

SELECT id, animals_id, vets_id FROM visits WHERE vets_id = 1 ORDER BY id DESC LIMIT 1;
SELECT animals.name FROM animals LEFT JOIN visits ON animals.id = visits.animals_id WHERE visits.vets_id = 3 GROUP BY animals.name;
SELECT vets.name, specialization.species_id FROM vets LEFT JOIN specialization ON vets.id = specialization.vets_id;
SELECT animals.name, visits.date_of_vist FROM animals LEFT JOIN visits ON animals.id = visits.animals_id WHERE visits.vets_id = 3 AND visits.date_of_vist BETWEEN '01-04-2020' AND '30-09-2020';
SELECT animals_id, COUNT(vets_id) FROM visits GROUP BY animals_id ORDER BY COUNT(vets_id) DESC LIMIT 1;
SELECT id, animals_id, vets_id FROM visits WHERE vets_id = 2 ORDER BY id ASC LIMIT 1;
SELECT vets_id, visits.animals_id, date_of_vist FROM visits ORDER BY id DESC LIMIT 1;
SELECT visits.id, animals.name, animals.species_id, specialization.species_id, visits.vets_id FROM visits LEFT JOIN specialization ON visits.vets_id = specialization.vets_id LEFT JOIN animals ON visits.animals_id = animals.id WHERE (specialization.species_id != animals.species_id AND specialization.both_species IS NULL) OR (specialization.species_id IS NULL);
SELECT visits.id, animals.name, animals.species_id, visits.vets_id FROM visits LEFT JOIN specialization ON visits.vets_id = specialization.vets_id LEFT JOIN animals ON visits.animals_id = animals.id WHERE (visits.vets_id = 2);
