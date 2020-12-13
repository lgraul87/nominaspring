CREATE DATABASE nominaspring;

GRANT ALL ON nominaspring.* TO springappuser@'%' IDENTIFIED BY 'pspringappuser';
GRANT ALL ON nominaspring.* TO springappuser@localhost IDENTIFIED BY 'pspringappuser';

USE nominaspring;

CREATE TABLE employee (
  id INTEGER PRIMARY KEY,
  name varchar(30),
    dni varchar(9),
    sex varchar(1),
    category integer,
    years integer
);

CREATE TABLE payroll (
  id INTEGER PRIMARY KEY,
    dni varchar(9),
    salary float
);
