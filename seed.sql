use ecole_databases;
insert into roles(id,label) values
(1,"professeur"),(2,"student"),(3,"admin"),(4,"student"),(5,"professeur");

select* from roles;

insert into users(nom,prnom,email,passeword,role_id) values
("fadal","dramé","drame@gmail.com",1234,1),
("Zeynab","dramé","zeynab@gmail.com",0000,3),
("Diarra","Lo","mamediarra@gmail.com",9999,2),
("Maymouna","Diop","Maye@gmail.com",1237,5);

select* from users;

insert into classes(nom,classeroom_number)values("Ui/ux design",1), ("Progrming pradigm",2),("PHP_basic",3),("Javascript",4);
select* from classes;
update classes
set nom="Design_class"
where id=1;
SELECT * FROM roles;
SELECT id, nom FROM users;


insert into courses(titres,dscription,total_hours,prof_id )
values("problem_solving","excercises pratiques","100",1),
      ("comminucation","langues et concept","130",2);
      
      
 insert into students (date_birth,student_nb, user_id,classe_id ) 
 values("2002-02-02",25,1,1),
      ("1999-09-20",33,2,1),
      ("2004-12-26",10,3,3);
      

insert into enrollements (enrolle_date,student_id,cours_id,statuts)
 values("2025",1,3,"actif"),("2024",2,4,"terminé"),("2026",3,5,"actif");
     
    SELECT * FROM courses; 
    select* from enrollements
     
      
      

