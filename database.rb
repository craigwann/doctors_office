# Guest=# CREATE DATABASE doctor;
# Guest=# \c doctor
# doctor=# CREATE TABLE doctors (id serial PRIMARY KEY, name varchar, specialty varchar);
# doctor=# CREATE TABLE patients (id serial PRIMARY KEY, name varchar, birthdate date);
# doctor=# ALTER TABLE patients ADD dr_id int;
# doctor=# ALTER TABLE patients ADD FOREIGN KEY (dr_id) REFERENCES doctors (id);
# doctor=# CREATE DATABASE doctor_test with template doctor;
