# BaseDeDonneesMCU

## Aussi, j'aimerai avoir quelques requêtes SQL à disposition pour faire des essais, par exemple pour afficher :

### les titres et dates de sorties des films du plus récent au plus ancien :

```sql
SELECT title,release_date 
FROM movies 
ORDER BY release_date DESC
```

### les noms, prénoms et ages des acteurs de plus de 30 ans dans l'ordre alphabétique :

```sql
SELECT Last_Name,First_Name,(YEAR(NOW())-YEAR(`Age`)) AS AGE 
FROM actors 
WHERE Age<"1991/01/01" 
ORDER BY Last_Name DESC
```

### la liste des acteurs pour un film donné :

```sql
SELECT title 
FROM join_movies_actors 
JOIN movies ON join_movies_actors.IDmovies=movies.IDmovies 
JOIN actors ON join_movies_actors.IDactors=actors.IDactors 
WHERE actors.First_Name = "Robert"
```

### la liste des films pour un acteur donné :

```sql
SELECT Last_Name,First_Name 
FROM join_movies_actors 
JOIN actors ON join_movies_actors.IDactors=actors.IDactors 
JOIN movies ON join_movies_actors.IDmovies=movies.IDmovies 
WHERE title='Thor'
```

### Requête pour ajouter un film :

```sql
INSERT INTO `movies`(`IDmovies`, `title`, `director`, `realease_date`, `duration`, `created_at`, `updated_at`)
VALUES (75, "iron man 45","Simon WARNAULT",2060, 200, "", NOW(), NOW());
```

### Requête pour ajouter un acteur :

```sql
INSERT INTO `actors`(`IDactors`, `Last_Name`, `First_Name`, `Age`, `created_at`, `updated_at`)
VALUES (75, "WARNAULT", "Simon", '1996/02/07', NOW(), NOW());
```

### Requête pour modifier un acteur :

```sql
UPDATE `actors`
SET `last_name` = "Downey Jr.", `first_name` = "Robert 2"
WHERE `id` = 1;
```

### Requête pour supprimer un acteur :

```sql
DELETE FROM `actors`
WHERE `id` = 1;
```

### Afficher les 3 derniers acteurs ajoutés :

```sql
SELECT `title`, `created_at`
FROM `movies` 
ORDER BY `created_at`
DESC LIMIT 3;
```
