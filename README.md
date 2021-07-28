# BaseDeDonneesMCU

## Aussi, j'aimerai avoir quelques requêtes SQL à disposition pour faire des essais, par exemple pour afficher :

### les titres et dates de sorties des films du plus récent au plus ancien :

sql ``
SELECT title,release_date 
FROM movies 
ORDER BY release_date DESC
``

### les noms, prénoms et ages des acteurs de plus de 30 ans dans l'ordre alphabétique :

SELECT Last_Name,First_Name,(YEAR(NOW())-YEAR(`Age`)) AS AGE 
FROM actors 
WHERE Age<"1991/01/01" 
ORDER BY Last_Name DESC

### la liste des acteurs pour un film donné :

SELECT title 
FROM join_movies_actors 
JOIN movies ON join_movies_actors.IDmovies=movies.IDmovies 
JOIN actors ON join_movies_actors.IDactors=actors.IDactors 
WHERE actors.First_Name = "Robert"

### la liste des films pour un acteur donné :

SELECT Last_Name,First_Name 
FROM join_movies_actors 
JOIN actors ON join_movies_actors.IDactors=actors.IDactors 
JOIN movies ON join_movies_actors.IDmovies=movies.IDmovies 
WHERE title='Thor'

### Requête pour ajouter un film :

INSERT INTO `movies`(`title`) 
VALUES ('titre du film à ajouter');

### Requête pour ajouter un acteur :

INSERT INTO `actors`(`Last_Name`,`First_Name`) 
VALUES ('NOM','PRENOM');

### Requête pour modifier un film :

UPDATE movies
SET title = 'modif',
    director = 'modif',
    release_date = 'modif',
    duration = 'modif',
WHERE IDmovies = 1(voir le numéro de l'id correspondant à l'acteur)

### Requête pour supprimer un acteur :

DELETE FROM actors
WHERE IDactors= 1(voir le numéro de l'id correspondant à l'acteur)

### Afficher les 3 derniers acteurs ajoutés :

SELECT Last_Name,First_Name,created_at 
FROM actors 
ORDER BY created_at DESC LIMIT 3
