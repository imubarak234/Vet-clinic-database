CREATE DATABASE vet_clinic;
CREATE TABLE animals (ID INT PRIMARY KEY NOT NULL, NAME TEXT NOT NULL, DATE_OF_BIRTH DATE, ESCAPE_ATTEMPTS INT, NEUTERED BOOLEAN, WEIGHT_KG REAL);