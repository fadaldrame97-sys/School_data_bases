
Auteur : Dramé Mouhamadou Fadal

Projet Base de Données – Gestion d’École

 ----Objectif du projet----

Ce projet a pour but de concevoir une base de données relationnelle propre, organisée et sécurisée pour gérer une école.

L’idée est de créer un système capable de gérer simplement :

les utilisateurs et leur connexion 
les rôles (admin, professeur, étudiant) 
l’organisation des classes 
les cours proposés 
les inscriptions des étudiants 

On travaille ici avec une approche professionnelle de conception de base de données, en respectant les bonnes pratiques comme la normalisation et l’intégrité des données.

----- Structure générale de la base de données-------

 Nom de la base :
ecole_databases

 1. Les rôles (roles)

Cette table sert à définir les types d’utilisateurs dans le système.

 Exemple : Admin, Professeur, Étudiant

Champs :
id : identifiant unique
label : nom du rôle

- Un rôle peut être attribué à plusieurs utilisateurs.

2. Les utilisateurs (users)

C’est ici qu’on stocke les informations de connexion et d’identité.

Champs :
id
nom
prenom
email (unique)
password (mot de passe sécurisé)
role_id (lié à la table roles)

-Chaque utilisateur a un seul rôle (admin, prof ou étudiant).

 3. Les classes (classes)

Les classes permettent de regrouper les étudiants par groupe ou niveau.

Champs :
id
nom
classroom_number

- Une classe peut contenir plusieurs étudiants.

 4. Les cours (courses)

Cette table représente les cours proposés par l’école.

Champs :
id
titre
description
total_hours
prof_id (le professeur qui enseigne le cours)

- Un professeur peut enseigner plusieurs cours.

5. Les étudiants (students)

Cette table contient les informations spécifiques aux étudiants.

Champs :
id
date_birth
student_nb
user_id
classe_id

- Un étudiant est lié à un compte utilisateur et appartient à une classe.

- 6. Les inscriptions (enrollments)

C’est la table qui relie les étudiants aux cours.

Elle permet de gérer les inscriptions.

Champs :
id
enrolled_at
status
student_id
course_id

- Un étudiant peut suivre plusieurs cours, et un cours peut avoir plusieurs étudiants.

- C’est ce qu’on appelle une relation Many-to-Many.



On empêche les doublons d’inscription avec :

UNIQUE(student_id, course_id)



- Technologies utilisées
MySQL
MySQL Workbench
Visual Studio Code
SQLTools
Diagramme ERD