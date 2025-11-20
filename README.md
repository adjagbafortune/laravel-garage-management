## Application Application de Gestion de Garage – Laravel v10

### Résumé
Projet réalisé dans le cadre du programme **D-Clic 2025 (OIF)**.  
Objectif : développer une application web complète en **Laravel 10**, permettant la gestion d’un garage automobile via des opérations CRUD avancées.

Cette application couvre :
- la gestion des véhicules,
- la gestion des réparations,
- la gestion des techniciens,
- l’exposition d’une API REST testée via Thunderclient/Postman.

Ce projet consolide les compétences acquises dans l’activité précédente en React, en introduisant cette fois une architecture **backend professionnelle**.

---

### Fonctionnalités principales
- Gestion des véhicules (création, lecture, mise à jour, suppression)
- Gestion des réparations
- Gestion des techniciens
- Système de relations entre les entités (Véhicules ↔ Réparations ↔ Techniciens)
- API REST complète exposée via Laravel
- Tests API via Thunderclient ou Postman
- Base de données MySQL exportable
  
---

### Stack technique
- **Framework :** Laravel 10  
- **Langage :** PHP 8+  
- **Base de données :** MySQL  
- **ORM :** Eloquent  
- **Tests API :** Thunderclient / Postman  
- **Outils :** Composer, Artisan CLI

---

### Architecture du projet

L’application adopte l’architecture MVC standard de Laravel :

app/<br>
│── Http/Controllers/<br>
│ ├── ReparationController.php<br>
│ ├── TechnicienController.php<br>
│ └── VehiculeController.php<br>
│── Models/<br>
│ ├── Reparation.php<br>
│ ├── Technicien.php<br>
│ └── Vehicule.php<br>
database/<br>
│── factories/<br>
│ ├── VehiculeFactory.php<br>
│ ├── ReparationFactory.php<br>
│ └── TechnicienFactory.php<br>
│── migrations/<br>
routes/<br>
│── api.php (définition des routes API REST)

### Relations clés :
- **1 véhicule → plusieurs réparations**
- **1 réparation → plusieurs techniciens (relation many-to-many possible selon implémentation)**

---

### Démonstration & Tests API
Rapport PDF
Le rapport complet comprenant :
- Captures des endpoints API  
- Tests Thunderclient  
- Résultats des requêtes CRUD  
est disponible dans le fichier :

`docs/Mini_projet_2_adjagba_fortune.pdf`

### Tests API réalisés
- GET /vehicules  
- POST /vehicules  
- PUT /vehicules/{id}  
- DELETE /vehicules/{id}  

Même logique appliquée aux réparations et techniciens.

---

### 📂 Documentation du projet
Le dossier `/docs` contient :
- Rapport PDF du projet : <a href="./docs/Mini_projet_2_adjagba_fortune.pdf">Mini_projet_2_adjagba_fortune</a>

*[Note : Réactualisez votre page en cas d'erreur d'ouverture du pdf]*

- Captures des tests API
- Export SQL de la base :
`Mini_projet_2_adjagba_fortune.sql`
  
---

## ⚙️ Installation & exécution

### 1. Cloner le projet

`git clone https://github.com/adjagbafortune/laravel-garage-management.git`

`cd laravel-garage-management`

### 2. Installer les dépendances

`composer install`

*[Note : Le dossier `vendor/` n’est pas inclus dans ce dépôt afin d’éviter un poids excessif. Il sera automatiquement recréé lors de l’exécution de la commande `composer install`.]*

### 3. Configurer l’environnement

Modifier dans .env :

`DB_DATABASE=garage_db`<br>
`DB_USERNAME=root`<br>
`DB_PASSWORD=root`<br>

### 4. Importer la base de données

Importer `Mini_projet_2_adjagba_fortune.sql` dans MySQL
ou exécuter :

php artisan migrate --seed

### 5. Lancer le serveur

`php artisan serve`

### Compétences démontrées

- Création d’une application web complète avec Laravel 10

- Utilisation avancée de l’ORM Eloquent

- Conception d’API REST (contrôleurs + routes API)

- Création de modèles, migrations et factories

- Tests API avec Thunderclient/Postman

- Respect du modèle relationnel fourni

- Architecture MVC professionnelle

- Gestion et export MySQL
  
### Améliorations possibles

- Ajout d’une interface utilisateur (Laravel Blade ou React)

- Ajout de la relation many-to-many entre réparations et techniciens

- Authentification et autorisation Laravel Breeze/Jetstream

- Tests automatisés (Feature & Unit Tests)

- Documentation API format Swagger/OpenAPI

👤 Auteur

Fortuné ADJAGBA<br>
Développeur Web – Programme D-Clic 2025 (OIF)
