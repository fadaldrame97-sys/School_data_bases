create database ecole_databases ;
use ecole_databases;

CREATE TABLE roles(
  id int auto_increment primary key,
  label varchar(100)
);

CREATE TABLE users (
  id int auto_increment primary key,
  nom varchar (100),
  prnom varchar(100 ),
  email varchar (100),
  passeword int,
  role_id int,
  foreign key (role_id) references roles(id)
);

Create table classes (
  Id int auto_increment primary key,
  nom varchar (100),
  classeroom_number int
);
show tables;

Create TABLE courses (
id int auto_increment primary key,
  titres varchar (100),
  dscription varchar (150),
  total_hours int,
  prof_id int,
  foreign key (prof_id) references users(id)
 
);

CREATE TABLE `students` (
  id int auto_increment primary key,
  date_birth int,
  student_nb int,
  user_id int,
  classe_id int,
  foreign key (user_id) references users(id),
  foreign key (classe_id) references classes(id)
);

create table enrollements (
  id int auto_increment primary key,
  enrolle_date int,
  student_id int,
  cours_id int,
  statuts varchar (100),
  foreign key (student_id) references students(id),
  foreign key (cours_id) references courses(id)
  
);

show tables


