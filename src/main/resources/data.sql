-- Utilisez UTF-8 pour l'encodage
SET NAMES utf8mb4;
SET CHARACTER SET utf8mb4;


INSERT INTO player (id,created_at,email,password,pseudo) VALUES
	 (1,'2024-01-18 10:08:47.367767','lova@gmail.com','$2a$10$kLc7BnGmiSEcYdEU6EiLtOkSo2syOZn0a1Z.jhBWspPkCLzvNVRlS','lova');
----
---- Déchargement des données de la table categorie
----
INSERT IGNORE INTO category (id, name) VALUES
    (1, 'Géographie : Capitales'),
    (2, 'Géographie : Pays et régions'),
    (3, 'Géographie : Géographie physique'),
    (4, 'Histoire : Événements historiques'),
    (5, 'Histoire : Personnalités historiques'),
    (6, 'Histoire : Périodes historiques'),
    (7, 'Culture générale : Sciences'),
    (8, 'Culture générale : Littérature'),
    (9, 'Culture générale : Arts et musique'),
    (10, 'Culture générale : Cinéma et télévision'),
    (11, 'Culture générale : Sports'),
    (12, 'Langues : Vocabulaire'),
    (13, 'Langues : Grammaire'),
    (14, 'Langues : Expressions idiomatiques'),
    (15, 'Science et nature : Biologie'),
    (16, 'Science et nature : Physique'),
    (17, 'Science et nature : Chimie'),
    (18, 'Science et nature : Animaux et plantes'),
    (19, 'Technologie et informatique : Informatique'),
    (20, 'Technologie et informatique : Internet'),
    (21, 'Technologie et informatique : Gadgets et innovations technologiques'),
    (22, 'Divertissement : Célébrités'),
    (23, 'Divertissement : Musique populaire'),
    (24, 'Divertissement : Jeux vidéo'),
    (25, 'Cuisine : Ingrédients'),
    (26, 'Cuisine : Plats traditionnels'),
    (27, 'Cuisine : Techniques de cuisine'),
    (28, 'Religion et mythologie : Mythologie grecque, romaine, etc.'),
    (29, 'Religion et mythologie : Religions du monde'),
    (30, 'Santé et bien-être : Anatomie'),
    (31, 'Santé et bien-être : Nutrition'),
    (32, 'Santé et bien-être : Fitness'),
    (33, 'Mathématiques et logique : Problèmes mathématiques'),
    (34, 'Mathématiques et logique : Logique et énigmes'),
    (35, 'Événements actuels : Actualités'),
    (36, 'Événements actuels : Politique'),
    (37, 'Événements actuels : Événements mondiaux récents'),
    (38, 'Pop culture : Mode'),
    (39, 'Pop culture : Tendances'),
    (40, 'Pop culture : Phénomènes viraux'),
    (41, 'Questions générales de connaissances'),
    (42, 'Personnalité : Tests de personnalité'),
    (43, 'Personnalité : Quiz "Quel personnage célèbre êtes-vous ?"');


------------------------------------------------------------------------------------------
--------------------------------------- GAME ID: 1 ---------------------------------------
------------------------------------------------------------------------------------------
INSERT INTO game (id, created_at, score, player_id, title) VALUES
    (1,'2024-01-15 10:08:47.367767',NULL,NULL,'Capitales du monde !');

INSERT INTO game_categories (game_id,categories_id) VALUES
    (1,1);

-- Insertion des questions quizz partie n°1
INSERT IGNORE INTO question (id, title) VALUES
    (1, 'Quelle est la capitale de l\'Espagne ?'),
    (2, 'Quelle est la capitale du Kenya ?'),
    (3, 'Quelle est la capitale de l\'Indonésie ?'),
    (4, 'Quelle est la capitale du Pérou ?'),
    (5, 'Quelle est la capitale de la Turquie ?'),
    (6, 'Quelle est la capitale du Canada ?'),
    (7, 'Quelle est la capitale de l\'Afrique du Sud ?'),
    (8, 'Quelle est la capitale de l\'Égypte ?'),
    (9, 'Quelle est la capitale de la Suède ?'),
    (10, 'Quelle est la capitale de l\'Australie ?');

INSERT INTO game_questions (game_id,questions_id) VALUES
     (1,1),
     (1,2),
     (1,3),
     (1,4),
     (1,5),
     (1,6),
     (1,7),
     (1,8),
     (1,9),
     (1,10);

INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
    (1, 1),
    (2, 1),
    (3, 1),
    (4, 1),
    (5, 1),
    (6, 1),
    (7, 1),
    (8, 1),
    (9, 1),
    (10, 1);

-- Insertion des réponses partie n°1
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
    (1, 'Barcelone',0,1),
    (2, 'Madrid',1,1),
    (3, 'Lisbonne',0,1),
    (4, 'Rome',0,1),

    (5, 'Nairobi',1,2),
    (6, 'Addis-Abeba',0,2),
    (7, 'Accra',0,2),
    (8, 'Kampala',0,2),

    (9, 'Bangkok',0,3),
    (10, 'Jakarta',1,3),
    (11, 'Kuala Lumpur',0,3),
    (12, 'Manille',0,3),

    (13, 'Quito',0,4),
    (14, 'Lima',1,4),
    (15, 'Bogota',0,4),
    (16, 'Caracas',0,4),

    (17, 'Istanbul',0,5),
    (18, 'Ankara',1,5),
    (19, 'Athènes',0,5),
    (20, 'Tbilissi',0,5),

    (21, 'Vancouver',0,6),
    (22, 'Toronto',0,6),
    (23, 'Ottawa',1,6),
    (24, 'Montréal',0,6),

    (25, 'Calgary',0,7),
    (26, 'Edmonton',0,7),
    (27, 'Johannesbourg',0,7),
    (28, 'Pretoria',1,7),
    (29, 'Le Cap',0,7),
    (30, 'Bloemfontein',0,7),

    (31, 'Pretoria',0,8),
    (32, 'Alexandrie',0,8),
    (33, 'Le Caire',1,8),
    (34, 'Sharm el-Sheikh',0,8),

    (35, 'Louxor',0,9),
    (36, 'Oslo',0,9),
    (37, 'Helsinki',0,9),
    (38, 'Stockholm',1,9),

    (39, 'Copenhague',0,10),
    (40, 'Sydney',0,10),
    (41, 'Melbourne',0,10),
    (42, 'Canberra',1,10),
    (43, 'Brisbane',0,10);


------------------------------------------------------------------------------------------
--------------------------------------- GAME ID: 2 ---------------------------------------
------------------------------------------------------------------------------------------
INSERT INTO game (id, created_at, score, player_id, title) VALUES
    (2,'2024-01-15 10:08:47.367767',NULL,NULL,'Événements Clés de l\'Histoire Mondiale');

INSERT INTO game_categories (game_id, categories_id) VALUES
    (2,4);

INSERT IGNORE INTO question (id, title) VALUES
    (11, 'Quel événement a marqué le début de la Première Guerre mondiale ?'),
    (12, 'Où a eu lieu la Déclaration d\'indépendance des États-Unis en 1776 ?'),
    (13, 'Quel empereur romain a construit le Colisée de Rome ?'),
    (14, 'Quelle révolution a conduit à la chute de la monarchie en France en 1789 ?'),
    (15, 'Quel événement a déclenché la Guerre froide ?'),
    (16, 'Où a eu lieu la bataille de Gettysburg pendant la Guerre de Sécession américaine ?'),
    (17, 'Quelle reine d\'Égypte est célèbre pour sa liaison avec Marc Antoine et Jules César ?'),
    (18, 'Quel événement a marqué la fin de la Guerre du Vietnam ?'),
    (19, 'Quelle découverte archéologique a permis de déchiffrer les hiéroglyphes égyptiens ?'),
    (20, 'Quel événement a déclenché la Révolution russe de 1917 ?');

INSERT INTO game_questions (game_id,questions_id) VALUES
     (2,11),
     (2,12),
     (2,13),
     (2,14),
     (2,15),
     (2,16),
     (2,17),
     (2,18),
     (2,19),
     (2,20);

-- Liaisons entre questions et catégories
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
    (11, 4), (12, 4), (13, 4), (14, 4), (15, 4), (16, 4), (17, 4), (18, 4), (19, 4), (20, 4);

-- Réponses
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
    -- Réponses pour la question 11
    (44, 'L\'assassinat de l\'archiduc François-Ferdinand', 1, 11),
    (45, 'La bataille de Verdun', 0, 11),
    (46, 'La signature du traité de Versailles', 0, 11),
    (47, 'La révolution bolchevique', 0, 11),
    (48, 'Le naufrage du Titanic', 0, 11),

    -- Réponses pour la question 12
    (49, 'Philadelphie', 0, 12),
    (50, 'Washington D.C.', 0, 12),
    (51, 'Boston', 0, 12),
    (52, 'New York', 0, 12),
    (53, 'Independence Hall, Philadelphie', 1, 12),

    -- Réponses pour la question 13
    (54, 'Auguste', 0, 13),
    (55, 'Caligula', 0, 13),
    (56, 'Néron', 0, 13),
    (57, 'Vespasien', 0, 13),
    (58, 'Titus', 1, 13),

    -- Réponses pour la question 14
    (59, 'La Révolution industrielle', 0, 14),
    (60, 'La Révolution américaine', 0, 14),
    (61, 'La Révolution française', 1, 14),
    (62, 'La Révolution russe', 0, 14),
    (63, 'La Révolution chinoise', 0, 14),

    -- Réponses pour la question 15
    (64, 'La conférence de Yalta', 0, 15),
    (65, 'La construction du mur de Berlin', 1, 15),
    (66, 'La crise des missiles de Cuba', 0, 15),
    (67, 'L\'assassinat de John F. Kennedy', 0, 15),
    (68, 'Le lancement du satellite Spoutnik', 0, 15),

    -- Réponses pour la question 16
    (69, 'Gettysburg, Pennsylvanie', 1, 16),
    (70, 'Richmond, Virginie', 0, 16),
    (71, 'Charleston, Caroline du Sud', 0, 16),
    (72, 'Antietam, Maryland', 0, 16),
    (73, 'Shiloh, Tennessee', 0, 16),

    -- Réponses pour la question 17
    (74, 'Cleopâtre VII', 1, 17),
    (75, 'Néfertiti', 0, 17),
    (76, 'Hatshepsout', 0, 17),
    (77, 'Thoutmôsis III', 0, 17),
    (78, 'Ramsès II', 0, 17),

    -- Réponses pour la question 18
    (79, 'La chute de Saïgon', 1, 18),
    (80, 'La bataille de Huế', 0, 18),
    (81, 'L\'accord de Paris', 0, 18),
    (82, 'La trêve de Noël', 0, 18),
    (83, 'Le retrait des troupes américaines', 0, 18),

    -- Réponses pour la question 19
    (84, 'La pierre de Rosette', 1, 19),
    (85, 'Les tablettes d\'argile de l\'Assyrie', 0, 19),
    (86, 'Les manuscrits de la mer Morte', 0, 19),
    (87, 'Les statues de l\'île de Pâques', 0, 19),
    (88, 'Le tombeau de Toutânkhamon', 0, 19),

    -- Réponses pour la question 20
    (89, 'La révolte de février', 0, 20),
    (90, 'L\'abdication de Nicolas II', 0, 20),
    (91, 'L\'assassinat de Raspoutine', 0, 20),
    (92, 'La bataille du Chemin des Dames', 0, 20),
    (93, 'La révolution d''Octobre', 1, 20);
