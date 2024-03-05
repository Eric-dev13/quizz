-- Utilisez UTF-8 pour l'encodage
SET NAMES utf8mb4;
SET CHARACTER SET utf8mb4;

----
---- LES UTILISATEURS
----
INSERT INTO player (id,created_at,email,password,pseudo, role) VALUES
	 (1,'2024-01-18 10:08:47.367767','lova@gmail.com','$2a$10$kLc7BnGmiSEcYdEU6EiLtOkSo2syOZn0a1Z.jhBWspPkCLzvNVRlS','Lova','USER'),
	 (2,'2024-01-18 11:08:47.367767','lanzae32@gmail.com','$2a$10$onC4aR6dxCHHbqvabQU1t.eUuBpct2jlTuP1NKXNhQV0PdH1.iyuO','Eric','USER');

----
---- LES CATEGORIES DE QUESTIONS OU DE GAME
----
INSERT IGNORE INTO category (id, name) VALUES
    (1, 'Géographie : Capitales'),
    (2, 'Géographie : Pays et régions'),
--    (3, 'Géographie : Géographie physique'),
    (4, 'Histoire : Événements historiques');
--    (5, 'Histoire : Personnalités historiques'),
--    (6, 'Histoire : Périodes historiques'),
--    (7, 'Culture générale : Sciences'),
--    (8, 'Culture générale : Littérature'),
--    (9, 'Culture générale : Arts et musique'),
--    (10, 'Culture générale : Cinéma et télévision'),
--    (11, 'Culture générale : Sports'),
--    (12, 'Langues : Vocabulaire'),
--    (13, 'Langues : Grammaire'),
--    (14, 'Langues : Expressions idiomatiques'),
--    (15, 'Science et nature : Biologie'),
--    (16, 'Science et nature : Physique'),
--    (17, 'Science et nature : Chimie'),
--    (18, 'Science et nature : Animaux et plantes'),
--    (19, 'Technologie et informatique : Informatique'),
--    (20, 'Technologie et informatique : Internet'),
--    (21, 'Technologie et informatique : Gadgets et innovations technologiques'),
--    (22, 'Divertissement : Célébrités'),
--    (23, 'Divertissement : Musique populaire'),
--    (24, 'Divertissement : Jeux vidéo'),
--    (25, 'Cuisine : Ingrédients'),
--    (26, 'Cuisine : Plats traditionnels'),
--    (27, 'Cuisine : Techniques de cuisine'),
--    (28, 'Religion et mythologie : Mythologie grecque, romaine, etc.'),
--    (29, 'Religion et mythologie : Religions du monde'),
--    (30, 'Santé et bien-être : Anatomie'),
--    (31, 'Santé et bien-être : Nutrition'),
--    (32, 'Santé et bien-être : Fitness'),
--    (33, 'Mathématiques et logique : Problèmes mathématiques'),
--    (34, 'Mathématiques et logique : Logique et énigmes'),
--    (35, 'Événements actuels : Actualités'),
--    (36, 'Événements actuels : Politique'),
--    (37, 'Événements actuels : Événements mondiaux récents'),
--    (38, 'Pop culture : Mode'),
--    (39, 'Pop culture : Tendances'),
--    (40, 'Pop culture : Phénomènes viraux'),
--    (41, 'Questions générales de connaissances'),
--    (42, 'Personnalité : Tests de personnalité'),
--    (43, 'Personnalité : Quiz "Quel personnage célèbre êtes-vous ?"')
--    ;

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



------------------------------------------------------------------------------------------
-------------------------------- Pays dans l'ordre alphabétiques -------------------------
------------------------------------------------------------------------------------------
--- **************************
--- * Question 21 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(21, "Quelle est la capitale de l'Afghanistan ?");

-- Réponses pour la question 21 (Afghanistan)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(94, 'Hérat', 0, 21),
(95, 'Kandahar', 0, 21),
(96, 'Kaboul', 1, 21),
(97, 'Mazar-e-Charif', 0, 21);

-- Question 21 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(21, 1);

--- **************************
--- * Question 22 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(22, "Quelle est la capitale de l'Albanie ?");

-- Réponses pour la question 22 (Albanie)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(98, 'Durrës', 0, 22),
(99, 'Vlorë', 0, 22),
(100, 'Shkodër', 0, 22),
(101, 'Tirana', 1, 22);

-- Question 22 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(22, 1);

--- **************************
--- * Question 23 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(23, "Quelle est la capitale de l'Algérie ?");

-- Réponses pour la question 23 (Algérie)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(102, 'Alger', 1, 23),
(103, 'Oran', 0, 23),
(104, 'Constantine', 0, 23),
(105, 'Annaba', 0, 23);

-- Question 23 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(23, 1);

--- **************************
--- * Question 24 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(24, "Quelle est la capitale de l'Allemagne ?");

-- Réponses pour la question 24 (Allemagne)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(106, 'Cologne', 0, 24),
(107, 'Berlin', 1, 24),
(108, 'Munich', 0, 24),
(109, 'Hambourg', 0, 24);

-- Question 24 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(24, 1);

-- **************************
-- * Question 25 *
-- **************************
INSERT IGNORE INTO question (id, title) VALUES
(25, "Quelle est la capitale de l'Andorre ?");

-- Réponses pour la question 25 (Andorre)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(110, 'Canillo', 0, 25),
(111, 'Andorre-la-Vieille', 1, 25),
(112, 'Encamp', 0, 25),
(113, 'La Massana', 0, 25);

-- Question 25 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(25, 1);

-- **************************
-- * Question 26 *
-- **************************
INSERT IGNORE INTO question (id, title) VALUES
(26, "Quelle est la capitale de l'Angola ?");

-- Réponses pour la question 26 (Angola)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(114, 'Huambo', 0, 26),
(115, 'Benguela', 0, 26),
(116, 'Luanda', 1, 26),
(117, 'Lubango', 0, 26);

-- Question 26 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(26, 1);


--- **************************
--- * Question 27 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(27, "Quelle est la capitale de l'Antigua-et-Barbuda ?");

-- Réponses pour la question 27 (Antigua-et-Barbuda)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(118, "Saint John's", 1, 27),
(119, 'Barbuda', 0, 27),
(120, 'Codrington', 0, 27),
(121, 'Liberta', 0, 27);

-- Question 27 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(27, 1);

--- **************************
--- * Question 28 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(28, "Quelle est la capitale de l'Argentine ?");

-- Réponses pour la question 28 (Argentine)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(122, 'Buenos Aires', 1, 28),
(123, 'Córdoba', 0, 28),
(124, 'Rosario', 0, 28),
(125, 'Mendoza', 0, 28);

-- Question 28 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(28, 1);

--- **************************
--- * Question 29 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(29, "Quelle est la capitale de l'Arménie ?");

-- Réponses pour la question 29 (Arménie)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(126, 'Erevan', 1, 29),
(127, 'Gyumri', 0, 29),
(128, 'Vanadzor', 0, 29),
(129, 'Stepanakert', 0, 29);

-- Question 29 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(29, 1);

--- **************************
--- * Question 30 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(30, "Quelle est la capitale de l'Australie ?");

-- Réponses pour la question 30 (Australie)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(130, "Canberra", 1, 30),
(131, "Sydney", 0, 30),
(132, "Melbourne", 0, 30),
(133, "Brisbane", 0, 30);

-- Question 30 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(30, 1);

--- **************************
--- * Question 31 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(31, "Quelle est la capitale de l'Autriche ?");

-- Réponses pour la question 31 (Autriche)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(134, 'Vienne', 1, 31),
(135, 'Graz', 0, 31),
(136, 'Linz', 0, 31),
(137, 'Salzbourg', 0, 31);

-- Question 31 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(31, 1);

--- **************************
--- * Question 32 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(32, "Quelle est la capitale de l'Azerbaïdjan ?");

-- Réponses pour la question 32 (Azerbaïdjan)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(138, 'Bakou', 1, 32),
(139, 'Ganja', 0, 32),
(140, 'Soumgait', 0, 32),
(141, 'Lankaran', 0, 32);

-- Question 32 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(32, 1);

--- **************************
--- * Question 33 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(33, "Quelle est la capitale des Bahamas ?");

-- Réponses pour la question 33 (Bahamas)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(142, 'Nassau', 1, 33),
(143, 'Freeport', 0, 33),
(144, 'Marsh Harbour', 0, 33),
(145, 'Coopers Town', 0, 33);

-- Question 33 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(33, 1);

--- **************************
--- * Question 34 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(34, "Quelle est la capitale du Bahreïn ?");

-- Réponses pour la question 34 (Bahreïn)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(146, 'Manama', 1, 34),
(147, 'Riffa', 0, 34),
(148, 'Muharraq', 0, 34),
(149, 'Hamad Town', 0, 34);

-- Question 34 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(34, 1);

--- **************************
--- * Question 35 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(35, "Quelle est la capitale du Bangladesh ?");

-- Réponses pour la question 35 (Bangladesh)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(150, 'Dacca', 1, 35),
(151, 'Chittagong', 0, 35),
(152, 'Khulna', 0, 35),
(153, 'Rajshahi', 0, 35);

-- Question 35 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(35, 1);

--- **************************
--- * Question 36 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(36, "Quelle est la capitale de la Barbade ?");

-- Réponses pour la question 36 (Barbade)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(154, 'Bridgetown', 1, 36),
(155, 'Speightstown', 0, 36),
(156, 'Oistins', 0, 36),
(157, 'Holetown', 0, 36);

-- Question 36 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(36, 1);

--- **************************
--- * Question 37 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(37, "Quelle est la capitale de la Biélorussie ?");

-- Réponses pour la question 37 (Biélorussie)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(158, 'Minsk', 1, 37),
(159, 'Brest', 0, 37),
(160, 'Gomel', 0, 37),
(161, 'Mogilev', 0, 37);

-- Question 37 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(37, 1);

--- **************************
--- * Question 38 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(38, "Quelle est la capitale de la Belgique ?");

-- Réponses pour la question 38 (Belgique)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(162, 'Bruxelles', 1, 38),
(163, 'Anvers', 0, 38),
(164, 'Gand', 0, 38),
(165, 'Charleroi', 0, 38);

-- Question 38 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(38, 1);

--- **************************
--- * Question 39 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(39, "Quelle est la capitale du Bélize ?");

-- Réponses pour la question 39 (Bélize)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(166, 'Belmopan', 1, 39),
(167, 'Belize City', 0, 39),
(168, 'San Ignacio', 0, 39),
(169, 'Orange Walk', 0, 39);

-- Question 39 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(39, 1);

--- **************************
--- * Question 40 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(40, "Quelle est la capitale du Bénin ?");

-- Réponses pour la question 40 (Bénin)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(170, 'Porto-Novo', 1, 40),
(171, 'Cotonou', 0, 40),
(172, 'Parakou', 0, 40),
(173, 'Abomey-Calavi', 0, 40);

-- Question 40 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(40, 1);

--- **************************
--- * Question 41 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(41, "Quelle est la capitale du Bhoutan ?");

-- Réponses pour la question 41 (Bhoutan)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(174, "Thimphou", 1, 41),
(175, "Paro", 0, 41),
(176, "Punakha", 0, 41),
(177, "Phuntsholing", 0, 41);

-- Question 41 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(41, 1);

--- **************************
--- * Question 42 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(42, "Quelle est la capitale de la Bosnie-Herzégovine ?");

-- Réponses pour la question 42 (Bosnie-Herzégovine)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(178, "Sarajevo", 1, 42),
(179, "Banja Luka", 0, 42),
(180, "Mostar", 0, 42),
(181, "Tuzla", 0, 42);

-- Question 42 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(42, 1);

--- **************************
--- * Question 43 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(43, "Quelle est la capitale du Botswana ?");

-- Réponses pour la question 43 (Botswana)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(182, "Gaborone", 1, 43),
(183, "Francistown", 0, 43),
(184, "Molepolole", 0, 43),
(185, "Maun", 0, 43);

-- Question 43 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(43, 1);

--- **************************
--- * Question 44 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(44, "Quelle est la capitale du Brunei ?");

-- Réponses pour la question 44 (Brunei)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(186, "Bandar Seri Begawan", 1, 44),
(187, "Seria", 0, 44),
(188, "Tutong", 0, 44),
(189, "Bangar", 0, 44);

-- Question 44 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(44, 1);

--- **************************
--- * Question 45 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(45, "Quelle est la capitale de la Bulgarie ?");

-- Réponses pour la question 45 (Bulgarie)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(190, "Sofia", 1, 45),
(191, "Plovdiv", 0, 45),
(192, "Varna", 0, 45),
(193, "Bourgas", 0, 45);

-- Question 45 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(45, 1);

--- **************************
--- * Question 46 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(46, "Quelle est la capitale du Burkina Faso ?");

-- Réponses pour la question 46 (Burkina Faso)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(194, "Ouagadougou", 1, 46),
(195, "Bobo-Dioulasso", 0, 46),
(196, "Koudougou", 0, 46),
(197, "Banfora", 0, 46);

-- Question 46 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(46, 1);

--- **************************
--- * Question 47 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(47, "Quelle est la capitale du Burundi ?");

-- Réponses pour la question 47 (Burundi)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(198, "Bujumbura", 1, 47),
(199, "Muyinga", 0, 47),
(200, "Gitega", 0, 47),
(201, "Ngozi", 0, 47);

-- Question 47 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(47, 1);

--- **************************
--- * Question 48 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(48, "Quelle est la capitale du Cambodge ?");

-- Réponses pour la question 48 (Cambodge)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(202, "Phnom Penh", 1, 48),
(203, "Siem Reap", 0, 48),
(204, "Battambang", 0, 48),
(205, "Sihanoukville", 0, 48);

-- Question 48 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(48, 1);

--- **************************
--- * Question 49 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(49, "Quelle est la capitale du Cameroun ?");

-- Réponses pour la question 49 (Cameroun)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(206, "Yaoundé", 1, 49),
(207, "Douala", 0, 49),
(208, "Bamenda", 0, 49),
(209, "Bafoussam", 0, 49);

-- Question 49 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(49, 1);

--- **************************
--- * Question 50 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(50, "Quelle est la capitale du Canada ?");

-- Réponses pour la question 50 (Canada)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(210, "Ottawa", 1, 50),
(211, "Toronto", 0, 50),
(212, "Montréal", 0, 50),
(213, "Vancouver", 0, 50);

-- Question 50 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(50, 1);

--- **************************
--- * Question 51 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(51, "Quelle est la capitale du Cap-Vert ?");

-- Réponses pour la question 51 (Cap-Vert)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(214, "Praia", 1, 51),
(215, "Mindelo", 0, 51),
(216, "Assomada", 0, 51),
(217, "Tarrafal", 0, 51);

-- Question 51 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(51, 1);

--- **************************
--- * Question 52 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(52, "Quelle est la capitale de la République centrafricaine ?");

-- Réponses pour la question 52 (République centrafricaine)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(218, "Bangui", 1, 52),
(219, "Bimbo", 0, 52),
(220, "Berbérati", 0, 52),
(221, "Kaga-Bandoro", 0, 52);

-- Question 52 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(52, 1);

--- **************************
--- * Question 53 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(53, "Quelle est la capitale du Tchad ?");

-- Réponses pour la question 53 (Tchad)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(222, "N'Djamena", 1, 53),
(223, "Moundou", 0, 53),
(224, "Sarh", 0, 53),
(225, "Abéché", 0, 53);

-- Question 53 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(53, 1);

--- **************************
--- * Question 54 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(54, "Quelle est la capitale du Chili ?");

-- Réponses pour la question 54 (Chili)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(226, "Santiago", 1, 54),
(227, "Valparaíso", 0, 54),
(228, "Concepción", 0, 54),
(229, "Antofagasta", 0, 54);

-- Question 54 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(54, 1);

--- **************************
--- * Question 55 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(55, "Quelle est la capitale de la Chine ?");

-- Réponses pour la question 55 (Chine)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(230, "Pékin", 1, 55),
(231, "Shanghai", 0, 55),
(232, "Canton", 0, 55),
(233, "Shenzhen", 0, 55);

-- Question 55 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(55, 1);

--- **************************
--- * Question 56 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(56, "Quelle est la capitale de Chypre ?");

-- Réponses pour la question 56 (Chypre)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(234, "Nicosie", 1, 56),
(235, "Limassol", 0, 56),
(236, "Larnaca", 0, 56),
(237, "Paphos", 0, 56);

-- Question 56 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(56, 1);

--- **************************
--- * Question 57 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(57, "Quelle est la capitale de la Colombie ?");

-- Réponses pour la question 57 (Colombie)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(238, "Bogota", 1, 57),
(239, "Medellín", 0, 57),
(240, "Cali", 0, 57),
(241, "Barranquilla", 0, 57);

-- Question 57 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(57, 1);

--- **************************
--- * Question 58 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(58, "Quelle est la capitale des Comores ?");

-- Réponses pour la question 58 (Comores)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(242, "Moroni", 1, 58),
(243, "Mamoudzou", 0, 58),
(244, "Fomboni", 0, 58),
(245, "Domoni", 0, 58);

-- Question 58 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(58, 1);

--- **************************
--- * Question 59 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(59, "Quelle est la capitale du Costa Rica ?");

-- Réponses pour la question 59 (Costa Rica)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(246, "San José", 1, 59),
(247, "Limon", 0, 59),
(248, "San Francisco", 0, 59),
(249, "Alajuela", 0, 59);

-- Question 59 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(59, 1);

--- **************************
--- * Question 60 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(60, "Quelle est la capitale de la Croatie ?");

-- Réponses pour la question 60 (Croatie)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(250, "Zagreb", 1, 60),
(251, "Split", 0, 60),
(252, "Rijeka", 0, 60),
(253, "Osijek", 0, 60);

-- Question 60 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(60, 1);

--- **************************
--- * Question 61 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(61, "Quelle est la capitale de Cuba ?");

-- Réponses pour la question 61 (Cuba)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(254, "La Havane", 1, 61),
(255, "Santiago de Cuba", 0, 61),
(256, "Camagüey", 0, 61),
(257, "Holguín", 0, 61);

-- Question 61 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(61, 1);

--- **************************
--- * Question 62 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(62, "Quelle est la capitale de Chypre du Nord ?");

-- Réponses pour la question 62 (Chypre du Nord)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(258, "Nicosie", 1, 62),
(259, "Famagouste", 0, 62),
(260, "Kyrenia", 0, 62),
(261, "Morphou", 0, 62);

-- Question 62 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(62, 1);

--- **************************
--- * Question 63 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(63, "Quelle est la capitale de la République tchèque ?");

-- Réponses pour la question 63 (République tchèque)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(262, "Prague", 1, 63),
(263, "Brno", 0, 63),
(264, "Ostrava", 0, 63),
(265, "Plzen", 0, 63);

-- Question 63 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(63, 1);

--- **************************
--- * Question 64 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(64, "Quelle est la capitale de la République dominicaine ?");

-- Réponses pour la question 64 (République dominicaine)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(266, "Saint-Domingue", 1, 64),
(267, "Santiago", 0, 64),
(268, "La Romana", 0, 64),
(269, "San Pedro de Macorís", 0, 64);

-- Question 64 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(64, 1);

--- **************************
--- * Question 65 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(65, "Quelle est la capitale de l'Équateur ?");

-- Réponses pour la question 65 (Équateur)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(270, "Quito", 1, 65),
(271, "Guayaquil", 0, 65),
(272, "Cuenca", 0, 65),
(273, "Ambato", 0, 65);

-- Question 65 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(65, 1);

--- **************************
--- * Question 66 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(66, "Quelle est la capitale de l'Égypte ?");

-- Réponses pour la question 66 (Égypte)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(274, "Le Caire", 1, 66),
(275, "Alexandrie", 0, 66),
(276, "Gizeh", 0, 66),
(277, "Port-Saïd", 0, 66);

-- Question 66 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(66, 1);

--- **************************
--- * Question 67 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(67, "Quelle est la capitale du Salvador ?");

-- Réponses pour la question 67 (Salvador)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(278, "San Salvador", 1, 67),
(279, "Santa Ana", 0, 67),
(280, "San Miguel", 0, 67),
(281, "Apopa", 0, 67);

-- Question 67 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(67, 1);

--- **************************
--- * Question 68 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(68, "Quelle est la capitale de la Guinée équatoriale ?");

-- Réponses pour la question 68 (Guinée équatoriale)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(282, "Malabo", 1, 68),
(283, "Bata", 0, 68),
(284, "Ebebiyin", 0, 68),
(285, "Aconibe", 0, 68);

-- Question 68 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(68, 1);

--- **************************
--- * Question 69 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(69, "Quelle est la capitale de l'Érythrée ?");

-- Réponses pour la question 69 (Érythrée)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(286, "Asmara", 1, 69),
(287, "Massaoua", 0, 69),
(288, "Keren", 0, 69),
(289, "Assab", 0, 69);

-- Question 69 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(69, 1);

--- **************************
--- * Question 70 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(70, "Quelle est la capitale de l'Estonie ?");

-- Réponses pour la question 70 (Estonie)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(290, "Tallinn", 1, 70),
(291, "Tartu", 0, 70),
(292, "Narva", 0, 70),
(293, "Pärnu", 0, 70);

-- Question 70 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(70, 1);

--- **************************
--- * Question 71 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(71, "Quelle est la capitale de l'Éthiopie ?");

-- Réponses pour la question 71 (Éthiopie)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(294, "Addis-Abeba", 1, 71),
(295, "Gondar", 0, 71),
(296, "Dessie", 0, 71),
(297, "Bahir Dar", 0, 71),
(298, "Mekele", 0, 71);

-- Question 71 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(71, 1);

--- **************************
--- * Question 72 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(72, "Quelle est la capitale des Fidji ?");

-- Réponses pour la question 72 (Fidji)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(299, "Suva", 1, 72),
(300, "Nadi", 0, 72),
(301, "Lautoka", 0, 72);

-- Question 72 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(72, 1);

--- **************************
--- * Question 73 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(73, "Quelle est la capitale de la Finlande ?");

-- Réponses pour la question 73 (Finlande)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(302, "Helsinki", 1, 73),
(303, "Tampere", 0, 73),
(304, "Turku", 0, 73),
(305, "Oulu", 0, 73);

-- Question 73 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(73, 1);

--- **************************
--- * Question 74 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(74, "Quelle est la capitale de la France ?");

-- Réponses pour la question 74 (France)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(306, "Paris", 1, 74),
(307, "Marseille", 0, 74),
(308, "Lyon", 0, 74),
(309, "Toulouse", 0, 74),
(310, "Nice", 0, 74);

-- Question 74 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(74, 1);

--- **************************
--- * Question 75 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(75, "Quelle est la capitale du Gabon ?");

-- Réponses pour la question 75 (Gabon)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(311, "Libreville", 1, 75),
(312, "Port-Gentil", 0, 75),
(313, "Franceville", 0, 75),
(314, "Oyem", 0, 75);

-- Question 75 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(75, 1);

--- **************************
--- * Question 76 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(76, "Quelle est la capitale de la Gambie ?");

-- Réponses pour la question 76 (Gambie)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(315, "Banjul", 1, 76),
(316, "Serekunda", 0, 76),
(317, "Brikama", 0, 76);

-- Question 76 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(76, 1);

--- **************************
--- * Question 77 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(77, "Quelle est la capitale de la Géorgie ?");

-- Réponses pour la question 77 (Géorgie)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(318, "Tbilissi", 1, 77),
(319, "Koutaïssi", 0, 77),
(320, "Batoumi", 0, 77);

-- Question 77 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(77, 1);

--- **************************
--- * Question 78 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(78, "Quelle est la capitale du Ghana ?");

-- Réponses pour la question 78 (Ghana)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(321, "Accra", 1, 78),
(322, "Kumasi", 0, 78),
(323, "Tamale", 0, 78);

-- Question 78 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(78, 1);

--- **************************
--- * Question 79 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(79, "Quelle est la capitale de la Grèce ?");

-- Réponses pour la question 79 (Grèce)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(324, "Athènes", 1, 79),
(325, "Thessalonique", 0, 79),
(326, "Patras", 0, 79);

-- Question 79 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(79, 1);

--- **************************
--- * Question 80 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(80, "Quelle est la capitale de la Grenade ?");

-- Réponses pour la question 80 (Grenade)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(327, "Saint-Georges", 1, 80),
(328, "Gouyave", 0, 80),
(329, "Grenville", 0, 80);

-- Question 80 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(80, 1);

--- **************************
--- * Question 81 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(81, "Quelle est la capitale du Guatemala ?");

-- Réponses pour la question 81 (Guatemala)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(330, "Guatemala", 1, 81),
(331, "Quetzaltenango", 0, 81),
(332, "Escuintla", 0, 81),
(333, "Antigua Guatemala", 0, 81);

-- Question 81 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(81, 1);

--- **************************
--- * Question 82 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(82, "Quelle est la capitale de la Guinée ?");

-- Réponses pour la question 82 (Guinée)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(334, "Conakry", 1, 82),
(335, "Nzérékoré", 0, 82),
(336, "Kankan", 0, 82),
(337, "Kindia", 0, 82);

-- Question 82 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(82, 1);

--- **************************
--- * Question 83 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(83, "Quelle est la capitale de la Guinée-Bissau ?");

-- Réponses pour la question 83 (Guinée-Bissau)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(338, "Bissau", 1, 83),
(339, "Bolama", 0, 83),
(340, "Bafatá", 0, 83),
(341, "Gabú", 0, 83);

-- Question 83 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(83, 1);

--- **************************
--- * Question 84 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(84, "Quelle est la capitale du Guyana ?");

-- Réponses pour la question 84 (Guyana)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(342, "Georgetown", 1, 84),
(343, "Linden", 0, 84),
(344, "New Amsterdam", 0, 84),
(345, "Bartica", 0, 84);

-- Question 84 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(84, 1);

--- **************************
--- * Question 85 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(85, "Quelle est la capitale de la Haïti ?");

-- Réponses pour la question 85 (Haïti)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(346, "Port-au-Prince", 1, 85),
(347, "Cap-Haïtien", 0, 85),
(348, "Gonaïves", 0, 85),
(349, "Les Cayes", 0, 85);

-- Question 85 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(85, 1);

--- **************************
--- * Question 86 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(86, "Quelle est la capitale de l'Honduras ?");

-- Réponses pour la question 86 (Honduras)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(350, "Tegucigalpa", 1, 86),
(351, "San Pedro Sula", 0, 86),
(352, "Choloma", 0, 86),
(353, "La Ceiba", 0, 86);

-- Question 86 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(86, 1);

--- **************************
--- * Question 87 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(87, "Quelle est la capitale de la Hongrie ?");

-- Réponses pour la question 87 (Hongrie)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(354, "Budapest", 1, 87),
(355, "Debrecen", 0, 87),
(356, "Szeged", 0, 87),
(357, "Miskolc", 0, 87);

-- Question 87 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(87, 1);

--- **************************
--- * Question 88 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(88, "Quelle est la capitale de l'Islande ?");

-- Réponses pour la question 88 (Islande)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(358, "Reykjavik", 1, 88),
(359, "Akureyri", 0, 88),
(360, "Kópavogur", 0, 88);

-- Question 88 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(88, 1);

--- **************************
--- * Question 89 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(89, "Quelle est la capitale de l'Inde ?");

-- Réponses pour la question 89 (Inde)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(361, "New Delhi", 1, 89),
(362, "Mumbai", 0, 89),
(363, "Bangalore", 0, 89),
(364, "Chennai", 0, 89);

-- Question 89 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(89, 1);

--- **************************
--- * Question 90 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(90, "Quelle est la capitale de l'Indonésie ?");

-- Réponses pour la question 90 (Indonésie)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(365, "Jakarta", 1, 90),
(366, "Surabaya", 0, 90),
(367, "Bandung", 0, 90),
(368, "Medan", 0, 90);

-- Question 90 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(90, 1);

--- **************************
--- * Question 91 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(91, "Quelle est la capitale de l'Irak ?");

-- Réponses pour la question 91 (Irak)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(369, "Bagdad", 1, 91),
(370, "Bassora", 0, 91),
(371, "Irbil", 0, 91),
(372, "Najaf", 0, 91);

-- Question 91 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(91, 1);

--- **************************
--- * Question 92 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(92, "Quelle est la capitale de l'Iran ?");

-- Réponses pour la question 92 (Iran)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(373, "Téhéran", 1, 92),
(374, "Ispahan", 0, 92),
(375, "Tabriz", 0, 92),
(376, "Chiraz", 0, 92);

-- Question 92 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(92, 1);

--- **************************
--- * Question 93 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(93, "Quelle est la capitale de l'Irlande ?");

-- Réponses pour la question 93 (Irlande)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(377, "Dublin", 1, 93),
(378, "Cork", 0, 93),
(379, "Galway", 0, 93),
(380, "Limerick", 0, 93);

-- Question 93 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(93, 1);

--- **************************
--- * Question 94 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(94, "Quelle est la capitale de l'Israël ?");

-- Réponses pour la question 94 (Israël)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(381, "Jérusalem", 1, 94),
(382, "Tel Aviv", 0, 94),
(383, "Haïfa", 0, 94),
(384, "Beer-Sheva", 0, 94);

-- Question 94 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(94, 1);

--- **************************
--- * Question 95 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(95, "Quelle est la capitale de l'Italie ?");

-- Réponses pour la question 95 (Italie)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(385, "Rome", 1, 95),
(386, "Milan", 0, 95),
(387, "Naples", 0, 95),
(388, "Turin", 0, 95);

-- Question 95 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(95, 1);

--- **************************
--- * Question 96 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(96, "Quelle est la capitale de la Jamaïque ?");

-- Réponses pour la question 96 (Jamaïque)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(389, "Kingston", 1, 96),
(390, "Montego Bay", 0, 96),
(391, "Spanish Town", 0, 96),
(392, "Portmore", 0, 96);

-- Question 96 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(96, 1);

--- **************************
--- * Question 97 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(97, "Quelle est la capitale du Japon ?");

-- Réponses pour la question 97 (Japon)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(393, "Tokyo", 1, 97),
(394, "Osaka", 0, 97),
(395, "Nagoya", 0, 97),
(396, "Sapporo", 0, 97);

-- Question 97 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(97, 1);

--- **************************
--- * Question 98 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(98, "Quelle est la capitale de la Jordanie ?");

-- Réponses pour la question 98 (Jordanie)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(397, "Amman", 1, 98),
(398, "Zarqa", 0, 98),
(399, "Irbid", 0, 98),
(400, "Aqaba", 0, 98);

-- Question 98 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(98, 1);

--- **************************
--- * Question 99 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(99, "Quelle est la capitale du Kazakhstan ?");

-- Réponses pour la question 99 (Kazakhstan)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(401, "Noursoultan", 1, 99),
(402, "Almaty", 0, 99),
(403, "Chymkent", 0, 99),
(404, "Karaganda", 0, 99);

-- Question 99 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(99, 1);

--- **************************
--- * Question 100 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(100, "Quelle est la capitale du Kenya ?");

-- Réponses pour la question 100 (Kenya)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(405, "Nairobi", 1, 100),
(406, "Mombasa", 0, 100),
(407, "Kisumu", 0, 100),
(408, "Nakuru", 0, 100);

-- Question 100 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(100, 1);

--- **************************
--- * Question 101 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(101, "Quelle est la capitale du Kirghizistan ?");

-- Réponses pour la question 101 (Kirghizistan)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(409, "Bichkek", 1, 101),
(410, "Och", 0, 101),
(411, "Djalal-Abad", 0, 101),
(412, "Karakol", 0, 101);

-- Question 101 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(101, 1);

--- **************************
--- * Question 102 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(102, "Quelle est la capitale du Koweït ?");

-- Réponses pour la question 102 (Koweït)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(413, "Koweït", 1, 102),
(414, "Koweït City", 0, 102),
(415, "Al-Ahmadi", 0, 102),
(416, "Hawalli", 0, 102);

-- Question 102 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(102, 1);

--- **************************
--- * Question 103 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(103, "Quelle est la capitale du Laos ?");

-- Réponses pour la question 103 (Laos)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(417, "Vientiane", 1, 103),
(418, "Luang Prabang", 0, 103),
(419, "Pakse", 0, 103),
(420, "Savannakhet", 0, 103);

-- Question 103 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(103, 1);

--- **************************
--- * Question 104 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(104, "Quelle est la capitale du Lesotho ?");

-- Réponses pour la question 104 (Lesotho)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(421, "Maseru", 1, 104),
(422, "Teyateyaneng", 0, 104),
(423, "Mafeteng", 0, 104),
(424, "Hlotse", 0, 104);

-- Question 104 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(104, 1);

--- **************************
--- * Question 105 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(105, "Quelle est la capitale de la Lettonie ?");

-- Réponses pour la question 105 (Lettonie)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(425, "Riga", 1, 105),
(426, "Daugavpils", 0, 105),
(427, "Liepāja", 0, 105),
(428, "Jelgava", 0, 105);

-- Question 105 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(105, 1);

--- **************************
--- * Question 106 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(106, "Quelle est la capitale du Liban ?");

-- Réponses pour la question 106 (Liban)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(429, "Beyrouth", 1, 106),
(430, "Tripoli", 0, 106),
(431, "Sidon", 0, 106),
(432, "Jounieh", 0, 106);

-- Question 106 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(106, 1);

--- **************************
--- * Question 107 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(107, "Quelle est la capitale du Liberia ?");

-- Réponses pour la question 107 (Liberia)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(433, "Monrovia", 1, 107),
(434, "Gbarnga", 0, 107),
(435, "Kakata", 0, 107),
(436, "Buchanan", 0, 107);

-- Question 107 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(107, 1);

--- **************************
--- * Question 108 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(108, "Quelle est la capitale de la Libye ?");

-- Réponses pour la question 108 (Libye)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(437, "Tripoli", 1, 108),
(438, "Benghazi", 0, 108),
(439, "Misrata", 0, 108),
(440, "Tarhuna", 0, 108);

-- Question 108 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(108, 1);

--- **************************
--- * Question 109 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(109, "Quelle est la capitale du Liechtenstein ?");

-- Réponses pour la question 109 (Liechtenstein)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(441, "Vaduz", 1, 109),
(442, "Schaan", 0, 109),
(443, "Triesen", 0, 109);

-- Question 109 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(109, 1);

--- **************************
--- * Question 110 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(110, "Quelle est la capitale de la Lituanie ?");

-- Réponses pour la question 110 (Lituanie)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(444, "Vilnius", 1, 110),
(445, "Kaunas", 0, 110),
(446, "Klaipėda", 0, 110),
(447, "Šiauliai", 0, 110);

-- Question 110 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(110, 1);

--- **************************
--- * Question 111 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(111, 'Quelle est la capitale du Luxembourg ?');

-- Réponses pour la question 111 (Luxembourg)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(448, 'Luxembourg', 1, 111),
(449, 'Esch-sur-Alzette', 0, 111),
(450, 'Dudelange', 0, 111),
(451, 'Differdange', 0, 111);

-- Question 111 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(111, 1);

--- **************************
--- * Question 112 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(112, 'Quelle est la capitale de Macédoine du Nord ?');

-- Réponses pour la question 112 (Macédoine du Nord)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(452, 'Skopje', 1, 112),
(453, 'Bitola', 0, 112),
(454, 'Ohrid', 0, 112),
(455, 'Prilep', 0, 112);

-- Question 112 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(112, 1);

--- **************************
--- * Question 113 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(113, 'Quelle est la capitale de Madagascar ?');

-- Réponses pour la question 113 (Madagascar)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(456, 'Antananarivo', 1, 113),
(457, 'Toamasina', 0, 113),
(458, 'Antsirabe', 0, 113),
(459, 'Fianarantsoa', 0, 113);

-- Question 113 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(113, 1);

--- **************************
--- * Question 114 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(114, 'Quelle est la capitale du Malawi ?');

-- Réponses pour la question 114 (Malawi)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(460, 'Lilongwe', 1, 114),
(461, 'Blantyre', 0, 114),
(462, 'Mzuzu', 0, 114),
(463, 'Zomba', 0, 114);

-- Question 114 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(114, 1);

--- **************************
--- * Question 115 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(115, 'Quelle est la capitale de la Malaisie ?');

-- Réponses pour la question 115 (Malaisie)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(464, 'Kuala Lumpur', 1, 115),
(465, 'George Town', 0, 115),
(466, 'Kota Kinabalu', 0, 115),
(467, 'Kuching', 0, 115);

-- Question 115 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(115, 1);

--- **************************
--- * Question 116 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(116, 'Quelle est la capitale des Maldives ?');

-- Réponses pour la question 116 (Maldives)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(468, 'Malé', 1, 116),
(469, 'Addu City', 0, 116),
(470, 'Fuvahmulah', 0, 116),
(471, 'Hithadhoo', 0, 116);

-- Question 116 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(116, 1);

--- **************************
--- * Question 117 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(117, 'Quelle est la capitale du Mali ?');

-- Réponses pour la question 117 (Mali)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(472, 'Bamako', 1, 117),
(473, 'Sikasso', 0, 117),
(474, 'Mopti', 0, 117),
(475, 'Segou', 0, 117);

-- Question 117 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(117, 1);

--- **************************
--- * Question 118 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(118, 'Quelle est la capitale de Malte ?');

-- Réponses pour la question 118 (Malte)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(476, 'La Valette', 1, 118),
(477, 'Birkirkara', 0, 118),
(478, 'Mosta', 0, 118),
(479, 'Qormi', 0, 118);

-- Question 118 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(118, 1);

--- **************************
--- * Question 119 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(119, 'Quelle est la capitale de la Mauritanie ?');

-- Réponses pour la question 119 (Mauritanie)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(480, 'Nouakchott', 1, 119),
(481, 'Nouadhibou', 0, 119),
(482, 'Rosso', 0, 119),
(483, 'Kiffa', 0, 119);

-- Question 119 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(119, 1);

--- **************************
--- * Question 120 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(120, 'Quelle est la capitale de Maurice ?');

-- Réponses pour la question 120 (Maurice)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(484, 'Port-Louis', 1, 120),
(485, 'Beau-Bassin Rose-Hill', 0, 120),
(486, 'Vacoas-Phoenix', 0, 120),
(487, 'Curepipe', 0, 120);

-- Question 120 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(120, 1);

--- **************************
--- * Question 121 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(121, "Quelle est la capitale du Mexique ?");

-- Réponses pour la question 121 (Mexique)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(488, "Mexico", 1, 121),
(489, "Guadalajara", 0, 121),
(490, "Monterrey", 0, 121),
(491, "Puebla", 0, 121);

-- Question 121 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(121, 1);

--- **************************
--- * Question 122 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(122, "Quelle est la capitale de la Micronésie ?");

-- Réponses pour la question 122 (Micronésie)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(492, "Palikir", 1, 122),
(493, "Weno", 0, 122),
(494, "Colonia", 0, 122),
(495, "Tofol", 0, 122);

-- Question 122 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(122, 1);

--- **************************
--- * Question 123 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(123, "Quelle est la capitale de la Moldavie ?");

-- Réponses pour la question 123 (Moldavie)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(496, "Chișinău", 1, 123),
(497, "Tiraspol", 0, 123),
(498, "Bălți", 0, 123),
(499, "Cahul", 0, 123);

-- Question 123 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(123, 1);

--- **************************
--- * Question 124 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(124, "Quelle est la capitale de Monaco ?");

-- Réponses pour la question 124 (Monaco)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(500, "Monaco", 1, 124),
(501, "Monte-Carlo", 0, 124),
(502, "La Condamine", 0, 124),
(503, "Fontvieille", 0, 124);

-- Question 124 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(124, 1);

--- **************************
--- * Question 125 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(125, "Quelle est la capitale de la Mongolie ?");

-- Réponses pour la question 125 (Mongolie)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(504, "Oulan-Bator", 1, 125),
(505, "Darkhan", 0, 125),
(506, "Erdenet", 0, 125),
(507, "Choibalsan", 0, 125);

-- Question 125 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(125, 1);

--- **************************
--- * Question 126 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(126, "Quelle est la capitale du Monténégro ?");

-- Réponses pour la question 126 (Monténégro)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(508, "Podgorica", 1, 126),
(509, "Nikšić", 0, 126),
(510, "Cetinje", 0, 126),
(511, "Budva", 0, 126);

-- Question 126 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(126, 1);

--- **************************
--- * Question 127 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(127, "Quelle est la capitale du Maroc ?");

-- Réponses pour la question 127 (Maroc)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(512, "Rabat", 1, 127),
(513, "Casablanca", 0, 127),
(514, "Marrakech", 0, 127),
(515, "Fès", 0, 127);

-- Question 127 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(127, 1);

--- **************************
--- * Question 128 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(128, "Quelle est la capitale du Mozambique ?");

-- Réponses pour la question 128 (Mozambique)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(516, "Maputo", 1, 128),
(517, "Beira", 0, 128),
(518, "Nampula", 0, 128),
(519, "Matola", 0, 128);

-- Question 128 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(128, 1);

--- **************************
--- * Question 129 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(129, "Quelle est la capitale de la Namibie ?");

-- Réponses pour la question 129 (Namibie)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(520, "Windhoek", 1, 129),
(521, "Swakopmund", 0, 129),
(522, "Walvis Bay", 0, 129),
(523, "Oshakati", 0, 129);

-- Question 129 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(129, 1);

--- **************************
--- * Question 130 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(130, "Quelle est la capitale du Nauru ?");

-- Réponses pour la question 130 (Nauru)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(524, "Yaren", 1, 130),
(525, "Denigomodu", 0, 130),
(526, "Buada", 0, 130),
(527, "Aiwo", 0, 130);

-- Question 130 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(130, 1);

--- **************************
--- * Question 131 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(131, "Quelle est la capitale du Népal ?");

-- Réponses pour la question 131 (Népal)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(528, "Katmandou", 1, 131),
(529, "Pokhara", 0, 131),
(530, "Lalitpur", 0, 131),
(531, "Biratnagar", 0, 131),
(532, "Birganj", 0, 131),
(533, "Dharan", 0, 131),
(534, "Bharatpur", 0, 131),
(535, "Janakpur", 0, 131);

-- Question 131 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(131, 1);

--- **************************
--- * Question 132 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(132, "Quelle est la capitale des Pays-Bas ?");

-- Réponses pour la question 132 (Pays-Bas)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(536, "Amsterdam", 1, 132),
(537, "La Haye", 0, 132),
(538, "Rotterdam", 0, 132),
(539, "Utrecht", 0, 132),
(540, "Eindhoven", 0, 132),
(541, "Groningue", 0, 132),
(542, "Tilbourg", 0, 132),
(543, "Almere", 0, 132);

-- Question 132 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(132, 1);

--- **************************
--- * Question 133 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(133, "Quelle est la capitale du Nicaragua ?");

-- Réponses pour la question 133 (Nicaragua)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(544, "Managua", 1, 133),
(545, "León", 0, 133),
(546, "Masaya", 0, 133),
(547, "Matagalpa", 0, 133),
(548, "Chinandega", 0, 133),
(549, "Granada", 0, 133),
(550, "Jinotega", 0, 133),
(551, "Estelí", 0, 133);

-- Question 133 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(133, 1);

--- **************************
--- * Question 134 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(134, "Quelle est la capitale du Niger ?");

-- Réponses pour la question 134 (Niger)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(552, "Niamey", 1, 134),
(553, "Zinder", 0, 134),
(554, "Maradi", 0, 134),
(555, "Agadez", 0, 134),
(556, "Tahoua", 0, 134),
(557, "Dosso", 0, 134),
(558, "Diffa", 0, 134),
(559, "Arlit", 0, 134);

-- Question 134 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(134, 1);

--- **************************
--- * Question 135 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(135, "Quelle est la capitale du Nigeria ?");

-- Réponses pour la question 135 (Nigeria)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(560, "Abuja", 1, 135),
(561, "Lagos", 0, 135),
(562, "Kano", 0, 135),
(563, "Ibadan", 0, 135),
(564, "Kaduna", 0, 135),
(565, "Port Harcourt", 0, 135),
(566, "Benin City", 0, 135),
(567, "Jos", 0, 135);

-- Question 135 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(135, 1);

--- **************************
--- * Question 136 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(136, "Quelle est la capitale de la Corée du Nord ?");

-- Réponses pour la question 136 (Corée du Nord)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(568, "Pyongyang", 1, 136),
(569, "Hamhung", 0, 136),
(570, "Chongjin", 0, 136),
(571, "Nampo", 0, 136),
(572, "Wonsan", 0, 136),
(573, "Sinuiju", 0, 136),
(574, "Sariwon", 0, 136),
(575, "Kaesong", 0, 136);

-- Question 136 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(136, 1);

--- **************************
--- * Question 137 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(137, "Quelle est la capitale de la Norvège ?");

-- Réponses pour la question 137 (Norvège)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(576, "Oslo", 1, 137),
(577, "Bergen", 0, 137),
(578, "Trondheim", 0, 137),
(579, "Stavanger", 0, 137),
(580, "Drammen", 0, 137),
(581, "Fredrikstad", 0, 137),
(582, "Kristiansand", 0, 137),
(583, "Tromsø", 0, 137);

-- Question 137 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(137, 1);

--- **************************
--- * Question 138 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(138, "Quelle est la capitale d'Oman ?");

-- Réponses pour la question 138 (Oman)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(584, "Mascate", 1, 138),
(585, "Salalah", 0, 138),
(586, "Suhar", 0, 138),
(587, "Seeb", 0, 138),
(588, "Rustaq", 0, 138),
(589, "Nizwa", 0, 138),
(590, "Ibri", 0, 138),
(591, "Barka", 0, 138);

-- Question 138 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(138, 1);

--- **************************
--- * Question 139 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(139, "Quelle est la capitale du Pakistan ?");

-- Réponses pour la question 139 (Pakistan)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(592, "Islamabad", 1, 139),
(593, "Karachi", 0, 139),
(594, "Lahore", 0, 139),
(595, "Faisalabad", 0, 139),
(596, "Rawalpindi", 0, 139),
(597, "Multan", 0, 139),
(598, "Peshawar", 0, 139),
(599, "Quetta", 0, 139);

-- Question 139 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(139, 1);

--- **************************
--- * Question 140 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(140, "Quelle est la capitale du Palau ?");

-- Réponses pour la question 140 (Palau)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(600, "Ngerulmud", 1, 140),
(601, "Koror", 0, 140),
(602, "Melekeok", 0, 140),
(603, "Urdmang", 0, 140),
(604, "Ngchesar", 0, 140),
(605, "Ngaraard", 0, 140),
(606, "Ngarchelong", 0, 140),
(607, "Ngatpang", 0, 140);

-- Question 140 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(140, 1);

--- **************************
--- * Question 141 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(141, "Quelle est la capitale du Panama ?");

-- Réponses pour la question 141 (Panama)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(608, "Panama", 1, 141),
(609, "Colon", 0, 141),
(610, "David", 0, 141),
(611, "La Chorrera", 0, 141),
(612, "Arraiján", 0, 141),
(613, "Santiago", 0, 141),
(614, "Chitré", 0, 141),
(615, "Aguadulce", 0, 141);

-- Question 141 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(141, 1);

--- **************************
--- * Question 142 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(142, "Quelle est la capitale de la Papouasie-Nouvelle-Guinée ?");

-- Réponses pour la question 142 (Papouasie-Nouvelle-Guinée)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(616, "Port Moresby", 1, 142),
(617, "Lae", 0, 142),
(618, "Mount Hagen", 0, 142),
(619, "Madang", 0, 142),
(620, "Wewak", 0, 142),
(621, "Goroka", 0, 142),
(622, "Rabaul", 0, 142),
(623, "Honiara", 0, 142);

-- Question 142 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(142, 1);

--- **************************
--- * Question 143 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(143, "Quelle est la capitale du Paraguay ?");

-- Réponses pour la question 143 (Paraguay)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(624, "Asunción", 1, 143),
(625, "Ciudad del Este", 0, 143),
(626, "San Lorenzo", 0, 143),
(627, "Luque", 0, 143),
(628, "Capiatá", 0, 143),
(629, "Lambaré", 0, 143),
(630, "Fernando de la Mora", 0, 143),
(631, "Limpio", 0, 143);

-- Question 143 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(143, 1);

--- **************************
--- * Question 144 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(144, "Quelle est la capitale du Pérou ?");

-- Réponses pour la question 144 (Pérou)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(632, "Lima", 1, 144),
(633, "Arequipa", 0, 144),
(634, "Trujillo", 0, 144),
(635, "Chiclayo", 0, 144),
(636, "Callao", 0, 144),
(637, "Iquitos", 0, 144),
(638, "Huancayo", 0, 144),
(639, "Piura", 0, 144);

-- Question 144 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(144, 1);

--- **************************
--- * Question 145 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(145, "Quelle est la capitale des Philippines ?");

-- Réponses pour la question 145 (Philippines)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(640, "Manille", 1, 145),
(641, "Quezon", 0, 145),
(642, "Davao City", 0, 145),
(643, "Caloocan", 0, 145),
(644, "Cebu City", 0, 145),
(645, "Zamboanga City", 0, 145),
(646, "Taguig", 0, 145),
(647, "Antipolo", 0, 145);

-- Question 145 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(145, 1);

--- **************************
--- * Question 146 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(146, "Quelle est la capitale de la Pologne ?");

-- Réponses pour la question 146 (Pologne)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(648, "Varsovie", 1, 146),
(649, "Cracovie", 0, 146),
(650, "Łódź", 0, 146),
(651, "Wrocław", 0, 146),
(652, "Poznań", 0, 146),
(653, "Gdańsk", 0, 146),
(654, "Szczecin", 0, 146),
(655, "Bydgoszcz", 0, 146);

-- Question 146 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(146, 1);

--- **************************
--- * Question 147 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(147, "Quelle est la capitale du Portugal ?");

-- Réponses pour la question 147 (Portugal)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(656, "Lisbonne", 1, 147),
(657, "Porto", 0, 147),
(658, "Vila Nova de Gaia", 0, 147),
(659, "Amadora", 0, 147),
(660, "Braga", 0, 147),
(661, "Coimbra", 0, 147),
(662, "Funchal", 0, 147),
(663, "Setúbal", 0, 147);

-- Question 147 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(147, 1);

--- **************************
--- * Question 148 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(148, "Quelle est la capitale du Qatar ?");

-- Réponses pour la question 148 (Qatar)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(664, "Doha", 1, 148),
(665, "Al Wakrah", 0, 148),
(666, "Umm Salal", 0, 148),
(667, "Al Rayyan", 0, 148),
(668, "Al Khor", 0, 148),
(669, "Mesaieed", 0, 148),
(670, "Al Daayen", 0, 148),
(671, "Al Khobar", 0, 148);

-- Question 148 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(148, 1);

--- **************************
--- * Question 149 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(149, "Quelle est la capitale de la Roumanie ?");

-- Réponses pour la question 149 (Roumanie)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(672, "Bucarest", 1, 149),
(673, "Cluj-Napoca", 0, 149),
(674, "Timișoara", 0, 149),
(675, "Iași", 0, 149),
(676, "Craiova", 0, 149),
(677, "Constanța", 0, 149),
(678, "Galati", 0, 149),
(679, "Brasov", 0, 149);

-- Question 149 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(149, 1);

--- **************************
--- * Question 150 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(150, "Quelle est la capitale de la Russie ?");

-- Réponses pour la question 150 (Russie)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(680, "Moscou", 1, 150),
(681, "Saint-Pétersbourg", 0, 150),
(682, "Novossibirsk", 0, 150),
(683, "Ekaterinbourg", 0, 150),
(684, "Nijni Novgorod", 0, 150),
(685, "Samara", 0, 150),
(686, "Omsk", 0, 150),
(687, "Kazan", 0, 150);

-- Question 150 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(150, 1);

--- **************************
--- * Question 151 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(151, "Quelle est la capitale du Rwanda ?");

-- Réponses pour la question 151 (Rwanda)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(688, "Kigali", 1, 151),
(689, "Butare", 0, 151),
(690, "Gisenyi", 0, 151),
(691, "Ruhengeri", 0, 151),
(692, "Gitarama", 0, 151),
(693, "Byumba", 0, 151),
(694, "Cyangugu", 0, 151),
(695, "Kibuye", 0, 151);

-- Question 151 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(151, 1);

--- **************************
--- * Question 152 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(152, "Quelle est la capitale de Saint-Christophe-et-Niévès ?");

-- Réponses pour la question 152 (Saint-Christophe-et-Niévès)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(696, "Basseterre", 1, 152),
(697, "Charlestown", 0, 152),
(698, "Sandy Point Town", 0, 152),
(699, "Dieppe Bay Town", 0, 152),
(700, "Half Way Tree", 0, 152),
(701, "Cayon", 0, 152),
(702, "Gingerland", 0, 152),
(703, "Market Shop", 0, 152);

-- Question 152 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(152, 1);

--- **************************
--- * Question 153 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(153, "Quelle est la capitale de Saint-Marin ?");

-- Réponses pour la question 153 (Saint-Marin)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(704, "Saint-Marin", 1, 153),
(705, "Serravalle", 0, 153),
(706, "Borgo Maggiore", 0, 153),
(707, "Domagnano", 0, 153),
(708, "Fiorentino", 0, 153),
(709, "Acquaviva", 0, 153),
(710, "Chiesanuova", 0, 153),
(711, "Montegiardino", 0, 153);

-- Question 153 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(153, 1);

--- **************************
--- * Question 154 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(154, "Quelle est la capitale de Saint-Vincent-et-les-Grenadines ?");

-- Réponses pour la question 154 (Saint-Vincent-et-les-Grenadines)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(712, "Kingstown", 1, 154),
(713, "Arnos Vale", 0, 154),
(714, "Chateaubelair", 0, 154),
(715, "Georgetown", 0, 154),
(716, "Byera Village", 0, 154),
(717, "Barrouallie", 0, 154),
(718, "Port Elizabeth", 0, 154),
(719, "Layou", 0, 154);

-- Question 154 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(154, 1);

--- **************************
--- * Question 155 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(155, "Quelle est la capitale de Sainte-Lucie ?");

-- Réponses pour la question 155 (Sainte-Lucie)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(720, "Castries", 1, 155),
(721, "Vieux Fort", 0, 155),
(722, "Soufrière", 0, 155),
(723, "Micoud", 0, 155),
(724, "Dennery", 0, 155),
(725, "Gros Islet", 0, 155),
(726, "Laborie", 0, 155),
(727, "Anse La Raye", 0, 155);

-- Question 155 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(155, 1);

--- **************************
--- * Question 156 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(156, "Quelle est la capitale du Salvador ?");

-- Réponses pour la question 156 (Salvador)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(728, "San Salvador", 1, 156),
(729, "Santa Ana", 0, 156),
(730, "San Miguel", 0, 156),
(731, "Mejicanos", 0, 156),
(732, "Soyapango", 0, 156),
(733, "Apopa", 0, 156),
(734, "Delgado", 0, 156),
(735, "Sonsonate", 0, 156);

-- Question 156 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(156, 1);

--- **************************
--- * Question 157 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(157, "Quelle est la capitale du Samoa ?");

-- Réponses pour la question 157 (Samoa)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(736, "Apia", 1, 157),
(737, "Vaitele", 0, 157),
(738, "Afenga", 0, 157),
(739, "Nofoalii", 0, 157),
(740, "Solosolo", 0, 157),
(741, "Faleula", 0, 157),
(742, "Siusega", 0, 157),
(743, "Malie", 0, 157);

-- Question 157 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(157, 1);

--- **************************
--- * Question 158 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(158, "Quelle est la capitale de Sao Tomé-et-Principe ?");

-- Réponses pour la question 158 (Sao Tomé-et-Principe)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(744, "São Tomé", 1, 158),
(745, "Príncipe", 0, 158),
(746, "Santo Amaro", 0, 158),
(747, "Neves", 0, 158),
(748, "Guadalupe", 0, 158),
(749, "Santana", 0, 158),
(750, "Água Izé", 0, 158),
(751, "Trindade", 0, 158);

-- Question 158 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(158, 1);

--- **************************
--- * Question 159 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(159, "Quelle est la capitale du Sénégal ?");

-- Réponses pour la question 159 (Sénégal)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(752, "Dakar", 1, 159),
(753, "Thiès", 0, 159),
(754, "Saint-Louis", 0, 159),
(755, "Kaolack", 0, 159),
(756, "Ziguinchor", 0, 159),
(757, "Touba", 0, 159),
(758, "Rufisque", 0, 159),
(759, "Mbour", 0, 159);

-- Question 159 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(159, 1);

--- **************************
--- * Question 160 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(160, "Quelle est la capitale de la Serbie ?");

-- Réponses pour la question 160 (Serbie)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(760, "Belgrade", 1, 160),
(761, "Novi Sad", 0, 160),
(762, "Niš", 0, 160),
(763, "Kragujevac", 0, 160),
(764, "Subotica", 0, 160),
(765, "Zrenjanin", 0, 160),
(766, "Pančevo", 0, 160),
(767, "Čačak", 0, 160);

-- Question 160 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(160, 1);

--- **************************
--- * Question 161 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(161, "Quelle est la capitale des Seychelles ?");

-- Réponses pour la question 161 (Seychelles)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(768, "Victoria", 1, 161),
(769, "Anse Royale", 0, 161),
(770, "Beau Vallon", 0, 161),
(771, "Anse Boileau", 0, 161),
(772, "Cascade", 0, 161),
(773, "Baie Lazare", 0, 161),
(774, "Takamaka", 0, 161),
(775, "Port Glaud", 0, 161);

-- Question 161 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(161, 1);

--- **************************
--- * Question 162 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(162, "Quelle est la capitale de la Sierra Leone ?");

-- Réponses pour la question 162 (Sierra Leone)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(776, "Freetown", 1, 162),
(777, "Kenema", 0, 162),
(778, "Bo", 0, 162),
(779, "Koidu", 0, 162),
(780, "Makeni", 0, 162),
(781, "Lunsar", 0, 162),
(782, "Port Loko", 0, 162),
(783, "Kabala", 0, 162);

-- Question 162 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(162, 1);

--- **************************
--- * Question 163 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(163, "Quelle est la capitale de Singapour ?");

-- Réponses pour la question 163 (Singapour)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(784, "Singapour", 1, 163),
(785, "Bukit Timah", 0, 163),
(786, "Jurong", 0, 163),
(787, "Hougang", 0, 163),
(788, "Woodlands", 0, 163),
(789, "Tampines", 0, 163),
(790, "Pasir Ris", 0, 163),
(791, "Sengkang", 0, 163);

-- Question 163 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(163, 1);

--- **************************
--- * Question 164 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(164, "Quelle est la capitale de la Slovaquie ?");

-- Réponses pour la question 164 (Slovaquie)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(792, "Bratislava", 1, 164),
(793, "Košice", 0, 164),
(794, "Prešov", 0, 164),
(795, "Žilina", 0, 164),
(796, "Banská Bystrica", 0, 164),
(797, "Trnava", 0, 164),
(798, "Nitra", 0, 164),
(799, "Trenčín", 0, 164);

-- Question 164 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(164, 1);

--- **************************
--- * Question 165 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(165, "Quelle est la capitale de la Slovénie ?");

-- Réponses pour la question 165 (Slovénie)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(800, "Ljubljana", 1, 165),
(801, "Maribor", 0, 165),
(802, "Celje", 0, 165),
(803, "Kranj", 0, 165),
(804, "Velenje", 0, 165),
(805, "Koper", 0, 165),
(806, "Novo Mesto", 0, 165),
(807, "Ptuj", 0, 165);

-- Question 165 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(165, 1);

--- **************************
--- * Question 166 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(166, "Quelle est la capitale de la Somalie ?");

-- Réponses pour la question 166 (Somalie)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(808, "Mogadiscio", 1, 166),
(809, "Hargeisa", 0, 166),
(810, "Bosaso", 0, 166),
(811, "Kismayo", 0, 166),
(812, "Marka", 0, 166),
(813, "Jamaame", 0, 166),
(814, "Baidoa", 0, 166),
(815, "Burao", 0, 166);

-- Question 166 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(166, 1);

--- **************************
--- * Question 167 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(167, "Quelle est la capitale du Soudan ?");

-- Réponses pour la question 167 (Soudan)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(816, "Khartoum", 1, 167),
(817, "Omdurman", 0, 167),
(818, "Port-Soudan", 0, 167),
(819, "Kassala", 0, 167),
(820, "Al-Ubayyid", 0, 167),
(821, "Nyala", 0, 167),
(822, "Wad Madani", 0, 167),
(823, "El Fasher", 0, 167);

-- Question 167 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(167, 1);

--- **************************
--- * Question 168 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(168, "Quelle est la capitale du Soudan du Sud ?");

-- Réponses pour la question 168 (Soudan du Sud)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(824, "Djouba", 1, 168),
(825, "Wau", 0, 168),
(826, "Malakal", 0, 168),
(827, "Yei", 0, 168),
(828, "Aweil", 0, 168),
(829, "Nimule", 0, 168),
(830, "Torit", 0, 168),
(831, "Bor", 0, 168);

-- Question 168 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(168, 1);

--- **************************
--- * Question 169 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(169, "Quelle est la capitale du Sri Lanka ?");

-- Réponses pour la question 169 (Sri Lanka)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(832, "Colombo", 1, 169),
(833, "Kandy", 0, 169),
(834, "Galle", 0, 169),
(835, "Jaffna", 0, 169),
(836, "Negombo", 0, 169),
(837, "Trincomalee", 0, 169),
(838, "Anuradhapura", 0, 169),
(839, "Batticaloa", 0, 169);

-- Question 169 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(169, 1);

--- **************************
--- * Question 170 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(170, "Quelle est la capitale du Suriname ?");

-- Réponses pour la question 170 (Suriname)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(840, "Paramaribo", 1, 170),
(841, "Lelydorp", 0, 170),
(842, "Brokopondo", 0, 170),
(843, "Nieuw Nickerie", 0, 170),
(844, "Moengo", 0, 170),
(845, "Nieuw Amsterdam", 0, 170),
(846, "Mariënburg", 0, 170),
(847, "Albina", 0, 170);

-- Question 170 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(170, 1);

--- **************************
--- * Question 171 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(171, "Quelle est la capitale du Swaziland ?");

-- Réponses pour la question 171 (Swaziland)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(848, "Mbabane", 1, 171),
(849, "Lobamba", 0, 171),
(850, "Manzini", 0, 171),
(851, "Siteki", 0, 171),
(852, "Nhlangano", 0, 171),
(853, "Big Bend", 0, 171),
(854, "Malkerns", 0, 171),
(855, "Piggs Peak", 0, 171);

-- Question 171 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(171, 1);

--- **************************
--- * Question 172 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(172, "Quelle est la capitale de la Syrie ?");

-- Réponses pour la question 172 (Syrie)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(856, "Damas", 1, 172),
(857, "Alep", 0, 172),
(858, "Homs", 0, 172),
(859, "Hama", 0, 172),
(860, "Lattaquié", 0, 172),
(861, "Deir ez-Zor", 0, 172),
(862, "Raqqa", 0, 172),
(863, "Tartous", 0, 172);

-- Question 172 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(172, 1);

--- **************************
--- * Question 173 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(173, "Quelle est la capitale du Tadjikistan ?");

-- Réponses pour la question 173 (Tadjikistan)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(864, "Douchanbé", 1, 173),
(865, "Khodjent", 0, 173),
(866, "Kouliab", 0, 173),
(867, "Kourgan-Tioube", 0, 173),
(868, "Istaravchan", 0, 173),
(869, "Vahdat", 0, 173),
(870, "Pendjikent", 0, 173),
(871, "Toursanzade", 0, 173);

-- Question 173 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(173, 1);

--- **************************
--- * Question 174 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(174, "Quelle est la capitale de la Tanzanie ?");

-- Réponses pour la question 174 (Tanzanie)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(872, "Dodoma", 1, 174),
(873, "Dar es Salaam", 0, 174),
(874, "Mwanza", 0, 174),
(875, "Arusha", 0, 174),
(876, "Mbeya", 0, 174),
(877, "Morogoro", 0, 174),
(878, "Tanga", 0, 174),
(879, "Kahama", 0, 174);

-- Question 174 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(174, 1);

--- **************************
--- * Question 175 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(175, "Quelle est la capitale du Tchad ?");

-- Réponses pour la question 175 (Tchad)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(880, "N'Djamena", 1, 175),
(881, "Moundou", 0, 175),
(882, "Sarh", 0, 175),
(883, "Abeché", 0, 175),
(884, "Kélo", 0, 175),
(885, "Koumra", 0, 175),
(886, "Pala", 0, 175),
(887, "Am Timan", 0, 175);

-- Question 175 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(175, 1);

--- **************************
--- * Question 176 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(176, "Quelle est la capitale de la République tchèque ?");

-- Réponses pour la question 176 (République tchèque)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(888, "Prague", 1, 176),
(889, "Brno", 0, 176),
(890, "Ostrava", 0, 176),
(891, "Plzeň", 0, 176),
(892, "Liberec", 0, 176),
(893, "Olomouc", 0, 176),
(894, "Ústí nad Labem", 0, 176),
(895, "Hradec Králové", 0, 176);

-- Question 176 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(176, 1);

--- **************************
--- * Question 177 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(177, "Quelle est la capitale du Timor oriental ?");

-- Réponses pour la question 177 (Timor oriental)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(896, "Díli", 1, 177),
(897, "Baucau", 0, 177),
(898, "Lospalos", 0, 177),
(899, "Same", 0, 177),
(900, "Aileu", 0, 177),
(901, "Suai", 0, 177),
(902, "Maliana", 0, 177),
(903, "Viqueque", 0, 177);

-- Question 177 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(177, 1);

--- **************************
--- * Question 178 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(178, "Quelle est la capitale du Togo ?");

-- Réponses pour la question 178 (Togo)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(904, "Lomé", 1, 178),
(905, "Sokodé", 0, 178),
(906, "Kara", 0, 178),
(907, "Palimé", 0, 178),
(908, "Atakpamé", 0, 178),
(909, "Bassar", 0, 178),
(910, "Tchamba", 0, 178),
(911, "Aného", 0, 178);

-- Question 178 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(178, 1);

--- **************************
--- * Question 179 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(179, "Quelle est la capitale de Tonga ?");

-- Réponses pour la question 179 (Tonga)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(912, "Nuku'alofa", 1, 179),
(913, "Neiafu", 0, 179),
(914, "Haveluloto", 0, 179),
(915, "Pangai", 0, 179),
(916, "Ohonua", 0, 179),
(917, "Kolonga", 0, 179),
(918, "Hihifo", 0, 179),
(919, "Niutoua", 0, 179);

-- Question 179 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(179, 1);

--- **************************
--- * Question 180 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(180, "Quelle est la capitale de Trinité-et-Tobago ?");

-- Réponses pour la question 180 (Trinité-et-Tobago)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(920, "Port-d'Espagne", 1, 180),
(921, "San Fernando", 0, 180),
(922, "Chaguanas", 0, 180),
(923, "Arima", 0, 180),
(924, "Marabella", 0, 180),
(925, "Point Fortin", 0, 180),
(926, "Scarborough", 0, 180),
(927, "Sangre Grande", 0, 180);

-- Question 180 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(180, 1);

--- **************************
--- * Question 181 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(181, "Quelle est la capitale du Turkménistan ?");

-- Réponses pour la question 181 (Turkménistan)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(928, "Achgabat", 1, 181),
(929, "Daşoguz", 0, 181),
(930, "Mary", 0, 181),
(931, "Turkmenabat", 0, 181),
(932, "Nebitçi", 0, 181),
(933, "Balkanabat", 0, 181),
(934, "Bayramaly", 0, 181),
(935, "Tejen", 0, 181);

-- Question 181 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(181, 1);

--- **************************
--- * Question 182 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(182, "Quelle est la capitale des Tuvalu ?");

-- Réponses pour la question 182 (Tuvalu)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(936, "Funafuti", 1, 182),
(937, "Vaiaku", 0, 182),
(938, "Fongafale", 0, 182),
(939, "Teava", 0, 182),
(940, "Nanumanga", 0, 182),
(941, "Nui", 0, 182),
(942, "Nanumea", 0, 182),
(943, "Nuitao", 0, 182);

-- Question 182 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(182, 1);

--- **************************
--- * Question 183 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(183, "Quelle est la capitale de l'Ouganda ?");

-- Réponses pour la question 183 (Ouganda)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(944, "Kampala", 1, 183),
(945, "Entebbe", 0, 183),
(946, "Gulu", 0, 183),
(947, "Lira", 0, 183),
(948, "Jinja", 0, 183),
(949, "Mbale", 0, 183),
(950, "Mbarara", 0, 183),
(951, "Masaka", 0, 183);

-- Question 183 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(183, 1);

--- **************************
--- * Question 184 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(184, "Quelle est la capitale de l'Ukraine ?");

-- Réponses pour la question 184 (Ukraine)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(952, "Kiev", 1, 184),
(953, "Kharkiv", 0, 184),
(954, "Odesa", 0, 184),
(955, "Dnipro", 0, 184),
(956, "Donetsk", 0, 184),
(957, "Lviv", 0, 184),
(958, "Zaporizhia", 0, 184),
(959, "Kryvyi Rih", 0, 184);

-- Question 184 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(184, 1);

--- **************************
--- * Question 185 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(185, "Quelle est la capitale des Émirats arabes unis ?");

-- Réponses pour la question 185 (Émirats arabes unis)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(960, "Abou Dabi", 1, 185),
(961, "Dubaï", 0, 185),
(962, "Chardja", 0, 185),
(963, "Oumm al Qaïwaïn", 0, 185),
(964, "Fujairah", 0, 185),
(965, "Ras el Khaïmah", 0, 185),
(966, "Oumm al Qaïwaïn", 0, 185),
(967, "Dibba Al-Fujairah", 0, 185);

-- Question 185 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(185, 1);

--- **************************
--- * Question 186 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(186, "Quelle est la capitale du Royaume-Uni ?");

-- Réponses pour la question 186 (Royaume-Uni)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(968, "Londres", 1, 186),
(969, "Édimbourg", 0, 186),
(970, "Belfast", 0, 186),
(971, "Cardiff", 0, 186),
(972, "Manchester", 0, 186),
(973, "Birmingham", 0, 186),
(974, "Glasgow", 0, 186),
(975, "Liverpool", 0, 186);

-- Question 186 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(186, 1);

--- **************************
--- * Question 187 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(187, "Quelle est la capitale des États-Unis ?");

-- Réponses pour la question 187 (États-Unis)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(976, "Washington, D.C.", 1, 187),
(977, "New York", 0, 187),
(978, "Los Angeles", 0, 187),
(979, "Chicago", 0, 187),
(980, "Houston", 0, 187),
(981, "San Francisco", 0, 187),
(982, "Miami", 0, 187),
(983, "Dallas", 0, 187);

-- Question 187 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(187, 1);

--- **************************
--- * Question 188 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(188, "Quelle est la capitale de l'Uruguay ?");

-- Réponses pour la question 188 (Uruguay)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(984, "Montevideo", 1, 188),
(985, "Salto", 0, 188),
(986, "Paysandú", 0, 188),
(987, "Las Piedras", 0, 188),
(988, "Rivera", 0, 188),
(989, "Maldonado", 0, 188),
(990, "Tacuarembó", 0, 188),
(991, "Meló", 0, 188);

-- Question 188 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(188, 1);

--- **************************
--- * Question 189 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(189, "Quelle est la capitale de l'Ouzbékistan ?");

-- Réponses pour la question 189 (Ouzbékistan)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(992, "Tachkent", 1, 189),
(993, "Namangan", 0, 189),
(994, "Andijan", 0, 189),
(995, "Samarcande", 0, 189),
(996, "Noukous", 0, 189),
(997, "Boukhara", 0, 189),
(998, "Noukous", 0, 189),
(999, "Andijan", 0, 189);

-- Question 189 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(189, 1);

--- **************************
--- * Question 190 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(190, "Quelle est la capitale du Vanuatu ?");

-- Réponses pour la question 190 (Vanuatu)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1000, "Port-Vila", 1, 190),
(1001, "Luganville", 0, 190),
(1002, "Norsup", 0, 190),
(1003, "Port-Olry", 0, 190),
(1004, "Isangel", 0, 190),
(1005, "Lakatoro", 0, 190),
(1006, "Saratamata", 0, 190),
(1007, "Sola", 0, 190);

-- Question 190 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(190, 1);

--- **************************
--- * Question 191 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(191, "Quelle est la capitale du Vatican ?");

-- Réponses pour la question 191 (Vatican)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1008, "Cité du Vatican", 1, 191),
(1009, "Rome", 0, 191),
(1010, "Milan", 0, 191),
(1011, "Naples", 0, 191),
(1012, "Turin", 0, 191),
(1013, "Florence", 0, 191),
(1014, "Venise", 0, 191),
(1015, "Bologne", 0, 191);

-- Question 191 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(191, 1);

--- **************************
--- * Question 192 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(192, "Quelle est la capitale du Venezuela ?");

-- Réponses pour la question 192 (Venezuela)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1016, "Caracas", 1, 192),
(1017, "Maracaibo", 0, 192),
(1018, "Valencia", 0, 192),
(1019, "Barquisimeto", 0, 192),
(1020, "Maracay", 0, 192),
(1021, "San Cristóbal", 0, 192),
(1022, "Ciudad Guayana", 0, 192),
(1023, "Valera", 0, 192);

-- Question 192 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(192, 1);

--- **************************
--- * Question 193 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(193, "Quelle est la capitale du Viêt Nam ?");

-- Réponses pour la question 193 (Viêt Nam)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1024, "Hanoï", 1, 193),
(1025, "Hô-Chi-Minh-Ville", 0, 193),
(1026, "Hải Phòng", 0, 193),
(1027, "Cần Thơ", 0, 193),
(1028, "Đà Nẵng", 0, 193),
(1029, "Biên Hòa", 0, 193),
(1030, "Nha Trang", 0, 193),
(1031, "Huế", 0, 193);

-- Question 193 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(193, 1);

--- **************************
--- * Question 194 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(194, "Quelle est la capitale du Yémen ?");

-- Réponses pour la question 194 (Yémen)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1032, "Sanaa", 1, 194),
(1033, "Aden", 0, 194),
(1034, "Taëz", 0, 194),
(1035, "Al Hudaydah", 0, 194),
(1036, "Ibb", 0, 194),
(1037, "Dhamar", 0, 194),
(1038, "Al-Mukalla", 0, 194),
(1039, "Zinjibar", 0, 194);

-- Question 194 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(194, 1);

--- **************************
--- * Question 195 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(195, "Quelle est la capitale de la Zambie ?");

-- Réponses pour la question 195 (Zambie)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1040, "Lusaka", 1, 195),
(1041, "Ndola", 0, 195),
(1042, "Kitwe", 0, 195),
(1043, "Kabwe", 0, 195),
(1044, "Chingola", 0, 195),
(1045, "Mufulira", 0, 195),
(1046, "Luanshya", 0, 195),
(1047, "Livingstone", 0, 195);

-- Question 195 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(195, 1);

--- **************************
--- * Question 196 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(196, "Quelle est la capitale du Zimbabwe ?");

-- Réponses pour la question 196 (Zimbabwe)
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1048, "Harare", 1, 196),
(1049, "Bulawayo", 0, 196),
(1050, "Chitungwiza", 0, 196),
(1051, "Mutare", 0, 196),
(1052, "Gweru", 0, 196),
(1053, "Epworth", 0, 196),
(1054, "Kwekwe", 0, 196),
(1055, "Kadoma", 0, 196);

-- Question 196 liée à la catégorie "Capitales"
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(196, 1);


------------------------------------------------------------------------------------------
-------------------------------- Développement web : HTML --------------------------------
------------------------------------------------------------------------------------------

--- Categorie
INSERT IGNORE INTO category (id, name) VALUES
    (44, 'HTML');

--- **************************
--- *      Question 197      *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
    (197, 'Quelle balise HTML est utilisée pour définir une liste ordonnée ?');

-- Réponses pour la question 197
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
    (1056, '<ol>', 1, 197),
    (1057, '<ul>', 0, 197),
    (1058, '<li>', 0, 197),
    (1059, '<dl>', 0, 197),
    (1060, '<list>', 0, 197);

--- Question 197 lié a la catégorie 44
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
    (197, 44);

--- **************************
--- *      Question 198      *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
    (198, 'Quelle balise HTML est utilisée pour créer un lien hypertexte ?');

-- Réponses pour la question 198
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
    (1061, '<a>', 1, 198),
    (1062, '<link>', 0, 198),
    (1063, '<url>', 0, 198),
    (1064, '<href>', 0, 198),
    (1065, '<src>', 0, 198);

-- Question 198 liée à la catégorie 44
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
    (198, 44);


--- **************************
--- *      Question 199      *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
    (199, 'Quel attribut HTML est utilisé pour spécifier un texte alternatif pour une image ?');

-- Réponses pour la question 199
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
    (1066, 'alt', 1, 199),
    (1067, 'title', 0, 199),
    (1068, 'src', 0, 199),
    (1069, 'link', 0, 199),
    (1070, 'image-alt', 0, 199);

-- Question 199 liée à la catégorie 44
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
    (199, 44);

--- **************************
--- *      Question 200      *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
    (200, 'Quelle balise HTML est utilisée pour créer un tableau ?');

-- Réponses pour la question 200
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
    (1071, '<table>', 1, 200),
    (1072, '<tr>', 0, 200),
    (1073, '<td>', 0, 200),
    (1074, '<th>', 0, 200),
    (1075, '<tab>', 0, 200);

-- Question 200 liée à la catégorie 44
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
    (200, 44);

--- **************************
--- *      Question 201      *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
    (201, 'Quelle balise HTML est utilisée pour créer un paragraphe ?');

-- Réponses pour la question 201
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
    (1076, '<p>', 1, 201),
    (1077, '<para>', 0, 201),
    (1078, '<par>', 0, 201),
    (1079, '<text>', 0, 201),
    (1080, '<pg>', 0, 201);

-- Question 201 liée à la catégorie 44
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
    (201, 44);

--- **************************
--- *      Question 202      *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(202, 'Quelle balise HTML est utilisée pour créer un lien hypertexte ?');

-- Réponses pour la question 202
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1081, '<a>', 1, 202),
(1082, '<link>', 0, 202),
(1083, '<url>', 0, 202),
(1084, '<href>', 0, 202),
(1085, '<src>', 0, 202);

-- Question 202 liée à la catégorie 44
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(202, 44);

--- **************************
--- * Question 203 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(203, 'Quelle balise HTML est utilisée pour insérer une image ?');

-- Réponses pour la question 203
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1086, '<img>', 1, 203),
(1087, '<picture>', 0, 203),
(1088, '<image>', 0, 203),
(1089, '<src>', 0, 203),
(1090, '<link>', 0, 203);

-- Question 203 liée à la catégorie 44
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(203, 44);

--- **************************
--- * Question 204 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(204, 'Quelle balise HTML est utilisée pour le texte en gras ?');

-- Réponses pour la question 204
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1091, '<b>', 1, 204),
(1092, '<strong>', 0, 204),
(1093, '<bold>', 0, 204),
(1094, '<em>', 0, 204),
(1095, '<i>', 0, 204);

-- Question 204 liée à la catégorie 44
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(204, 44);

--- **************************
--- * Question 205 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(205, 'Quelle balise HTML est utilisée pour créer une liste non ordonnée ?');

-- Réponses pour la question 205
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1096, '<ul>', 1, 205),
(1097, '<ol>', 0, 205),
(1098, '<li>', 0, 205),
(1099, '<dl>', 0, 205),
(1100, '<list>', 0, 205);

-- Question 205 liée à la catégorie 44
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(205, 44);

--- **************************
--- * Question 206 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(206, 'Quelle balise HTML est utilisée pour définir une image ?');

-- Réponses pour la question 206
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1101, '<img>', 1, 206),
(1102, '<image>', 0, 206),
(1103, '<picture>', 0, 206),
(1104, '<src>', 0, 206),
(1105, '<url>', 0, 206);

-- Question 206 liée à la catégorie 44
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(206, 44);

--- **************************
--- * Question 207 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(207, 'Quelle balise HTML est utilisée pour définir un lien hypertexte ?');

-- Réponses pour la question 207
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1106, '<a>', 1, 207),
(1107, '<link>', 0, 207),
(1108, '<href>', 0, 207),
(1109, '<url>', 0, 207),
(1110, '<web>', 0, 207);

-- Question 207 liée à la catégorie 44
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(207, 44);

--- **************************
--- * Question 208 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(208, 'Quelle balise HTML est utilisée pour définir une cellule de tableau ?');

-- Réponses pour la question 208
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1111, '<td>', 1, 208),
(1112, '<cell>', 0, 208),
(1113, '<th>', 0, 208),
(1114, '<table>', 0, 208),
(1115, '<tr>', 0, 208);

-- Question 208 liée à la catégorie 44
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(208, 44);

--- **************************
--- * Question 209 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(209, 'Quelle balise HTML est utilisée pour définir une liste de définitions ?');

-- Réponses pour la question 209
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1116, '<dl>', 1, 209),
(1117, '<ul>', 0, 209),
(1118, '<ol>', 0, 209),
(1119, '<li>', 0, 209),
(1120, '<list>', 0, 209);

-- Question 209 liée à la catégorie 44
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(209, 44);

--- **************************
--- * Question 210 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(210, 'Quelle balise HTML est utilisée pour définir un paragraphe ?');

-- Réponses pour la question 210
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1121, '<p>', 1, 210),
(1122, '<para>', 0, 210),
(1123, '<par>', 0, 210),
(1124, '<text>', 0, 210),
(1125, '<pg>', 0, 210);

-- Question 210 liée à la catégorie 44
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(210, 44);

--- **************************
--- * Question 211 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(211, 'Quelle balise HTML est utilisée pour définir une liste ordonnée ?');

-- Réponses pour la question 211
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1126, '<ol>', 1, 211),
(1127, '<ul>', 0, 211),
(1128, '<li>', 0, 211),
(1129, '<dl>', 0, 211),
(1130, '<list>', 0, 211);

-- Question 211 liée à la catégorie 44
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(211, 44);

--- **************************
--- * Question 212 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(212, 'Quelle balise HTML est utilisée pour créer un lien hypertexte ?');

-- Réponses pour la question 212
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1131, '<a>', 1, 212),
(1132, '<link>', 0, 212),
(1133, '<url>', 0, 212),
(1134, '<href>', 0, 212),
(1135, '<src>', 0, 212);

-- Question 212 liée à la catégorie 44
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(212, 44);

--- **************************
--- * Question 213 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(213, 'Quel attribut HTML est utilisé pour spécifier un texte alternatif pour une image ?');

-- Réponses pour la question 213
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1136, 'alt', 1, 213),
(1137, 'title', 0, 213),
(1138, 'src', 0, 213),
(1139, 'link', 0, 213),
(1140, 'image-alt', 0, 213);

-- Question 213 liée à la catégorie 44
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(213, 44);

--- **************************
--- * Question 214 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(214, 'Quelle balise HTML est utilisée pour définir une image de fond ?');

-- Réponses pour la question 214
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1141, '<background>', 0, 214),
(1142, '<img>', 0, 214),
(1143, '<picture>', 0, 214),
(1144, '<bg>', 0, 214),
(1145, '<url>', 1, 214);

-- Question 214 liée à la catégorie 44
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(214, 44);

--- **************************
--- * Question 215 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(215, 'Quelle balise HTML est utilisée pour définir un formulaire ?');

-- Réponses pour la question 215
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1146, '<form>', 1, 215),
(1147, '<input>', 0, 215),
(1148, '<submit>', 0, 215),
(1149, '<button>', 0, 215),
(1150, '<select>', 0, 215);

-- Question 215 liée à la catégorie 44
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(215, 44);

--- **************************
--- * Question 216 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(216, 'Quelle balise HTML est utilisée pour définir une citation ?');

-- Réponses pour la question 216
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1151, '<blockquote>', 1, 216),
(1152, '<cite>', 0, 216),
(1153, '<q>', 0, 216),
(1154, '<quote>', 0, 216),
(1155, '<cite>', 0, 216);

-- Question 216 liée à la catégorie 44
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(216, 44);

--- **************************
--- * Question 217 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(217, 'Quelle balise HTML est utilisée pour définir un lien hypertexte ou un lien vers une autre page ?');

-- Réponses pour la question 217
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1156, '<a>', 1, 217),
(1157, '<link>', 0, 217),
(1158, '<url>', 0, 217),
(1159, '<li>', 0, 217),
(1160, '<list>', 0, 217);

-- Question 217 liée à la catégorie 44
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(217, 44);

--- **************************
--- * Question 218 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(218, 'Quelle balise HTML est utilisée pour définir une ligne dans un tableau ?');

-- Réponses pour la question 218
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1161, '<tr>', 1, 218),
(1162, '<line>', 0, 218),
(1163, '<td>', 0, 218),
(1164, '<th>', 0, 218),
(1165, '<row>', 0, 218);

-- Question 218 liée à la catégorie 44
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(218, 44);

--- **************************
--- * Question 219 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(219, 'Quelle balise HTML est utilisée pour définir un champ de saisie dans un formulaire ?');

-- Réponses pour la question 219
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1166, '<input>', 1, 219),
(1167, '<text>', 0, 219),
(1168, '<form>', 0, 219),
(1169, '<field>', 0, 219),
(1170, '<box>', 0, 219);

-- Question 219 liée à la catégorie 44
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(219, 44);



------------------------------------------------------------------------------------------
-------------------------------- Développement web : CSS --------------------------------
------------------------------------------------------------------------------------------
INSERT IGNORE INTO category (id, name) VALUES
        (45, 'CSS');

--- **************************
--- * Question 220 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(220, 'Quelle propriété CSS est utilisée pour définir la couleur du texte ?');

-- Réponses pour la question 220
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1171, 'color', 1, 220),
(1172, 'text-color', 0, 220),
(1173, 'font-color', 0, 220),
(1174, 'style-color', 0, 220),
(1175, 'text-style', 0, 220);

-- Question 220 liée à la catégorie 45
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(220, 45);

--- **************************
--- * Question 221 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(221, 'Quelle propriété CSS est utilisée pour définir la taille de la police ?');

-- Réponses pour la question 221
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1176, 'font-size', 1, 221),
(1177, 'text-size', 0, 221),
(1178, 'size', 0, 221),
(1179, 'font-height', 0, 221),
(1180, 'text-height', 0, 221);

-- Question 221 liée à la catégorie 45
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(221, 45);

--- **************************
--- * Question 222 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(222, 'Quelle propriété CSS est utilisée pour définir la couleur de fond d\'un élément ?');

-- Réponses pour la question 222
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1181, 'background-color', 1, 222),
(1182, 'color-background', 0, 222),
(1183, 'background', 0, 222),
(1184, 'element-color', 0, 222),
(1185, 'bg-color', 0, 222);

-- Question 222 liée à la catégorie 45
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(222, 45);

--- **************************
--- * Question 223 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(223, 'Quelle propriété CSS est utilisée pour centrer un élément horizontalement ?');

-- Réponses pour la question 223
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1186, "margin: auto;", 1, 223),
(1187, "text-align: center;", 0, 223),
(1188, "center: true;", 0, 223),
(1189, "position: center;", 0, 223),
(1190, "float: center;", 0, 223);

-- Question 223 liée à la catégorie 45
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(223, 45);

--- **************************
--- * Question 224 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(224, 'Quelle propriété CSS est utilisée pour rendre un élément invisible tout en conservant son espace ?');

-- Réponses pour la question 224
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1191, "visibility: hidden;", 1, 224),
(1192, "display: none;", 0, 224),
(1193, "opacity: 0;", 0, 224),
(1194, "hidden: true;", 0, 224),
(1195, "invisible: true;", 0, 224);

-- Question 224 liée à la catégorie 45
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(224, 45);

--- **************************
--- * Question 225 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(225, "Quelle propriété CSS est utilisée pour aligner le texte à droite ?");

-- Réponses pour la question 225
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1196, "text-align: right;", 1, 225),
(1197, "align: right;", 0, 225),
(1198, "right-align: true;", 0, 225),
(1199, "align-right: true;", 0, 225),
(1200, "text-right: true;", 0, 225);

-- Question 225 liée à la catégorie 45
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(225, 45);

--- **************************
--- * Question 226 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(226, "Quelle propriété CSS est utilisée pour définir l'espacement entre les lignes d'un texte ?");

-- Réponses pour la question 226
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1201, "line-height", 1, 226),
(1202, "spacing-line", 0, 226),
(1203, "text-spacing", 0, 226),
(1204, "line-spacing", 0, 226),
(1205, "spacing: line;", 0, 226);

-- Question 226 liée à la catégorie 45
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(226, 45);

--- **************************
--- * Question 227 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(227, "Quelle propriété CSS est utilisée pour définir la couleur du texte de survol d'un lien ?");

-- Réponses pour la question 227
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1206, "a:hover { color: value; }", 1, 227),
(1207, "link-hover-color: value;", 0, 227),
(1208, "hover-color: a;", 0, 227),
(1209, "color-hover: link;", 0, 227),
(1210, "a:color { hover: value; }", 0, 227);

-- Question 227 liée à la catégorie 45
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(227, 45);

--- **************************
--- * Question 228 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(228, "Quelle propriété CSS est utilisée pour définir l'espacement entre les lettres d'un texte ?");

-- Réponses pour la question 228
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1211, "letter-spacing", 1, 228),
(1212, "spacing-letter", 0, 228),
(1213, "text-spacing", 0, 228),
(1214, "letter-spacing: value;", 0, 228),
(1215, "spacing: letter;", 0, 228);

-- Question 228 liée à la catégorie 45
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(228, 45);

--- **************************
--- * Question 229 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(229, "Quelle propriété CSS est utilisée pour cacher un élément sans le supprimer de la mise en page ?");

-- Réponses pour la question 229
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1216, "visibility: hidden;", 1, 229),
(1217, "display: none;", 0, 229),
(1218, "opacity: 0;", 0, 229),
(1219, "hidden: true;", 0, 229),
(1220, "invisible: true;", 0, 229);

-- Question 229 liée à la catégorie 45
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(229, 45);

--- **************************
--- * Question 230 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(230, "Quelle propriété CSS est utilisée pour définir la couleur de fond d'un élément ?");

-- Réponses pour la question 230
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1221, "background-color", 1, 230),
(1222, "color-background", 0, 230),
(1223, "element-background", 0, 230),
(1224, "bg-color", 0, 230),
(1225, "color: background;", 0, 230);

-- Question 230 liée à la catégorie 45
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(230, 45);

--- **************************
--- * Question 231 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(231, "Quelle propriété CSS est utilisée pour définir la taille de la police d'un texte ?");

-- Réponses pour la question 231
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1226, "font-size", 1, 231),
(1227, "size-font", 0, 231),
(1228, "text-size", 0, 231),
(1229, "font-style", 0, 231),
(1230, "size: font;", 0, 231);

-- Question 231 liée à la catégorie 45
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(231, 45);

--- **************************
--- * Question 232 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(232, "Quelle propriété CSS est utilisée pour définir l'alignement vertical du contenu d'un élément ?");

-- Réponses pour la question 232
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1231, "vertical-align", 1, 232),
(1232, "align-vertical", 0, 232),
(1233, "content-align", 0, 232),
(1234, "align: vertical;", 0, 232),
(1235, "vertical: align;", 0, 232);

-- Question 232 liée à la catégorie 45
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(232, 45);

--- **************************
--- * Question 233 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(233, "Quelle propriété CSS est utilisée pour définir l'espacement entre les mots d'un texte ?");

-- Réponses pour la question 233
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1236, "word-spacing", 1, 233),
(1237, "spacing-word", 0, 233),
(1238, "text-spacing", 0, 233),
(1239, "word: spacing;", 0, 233),
(1240, "spacing: word;", 0, 233);

-- Question 233 liée à la catégorie 45
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(233, 45);

--- **************************
--- * Question 234 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(234, "Quelle propriété CSS est utilisée pour définir la graisse (bold) du texte ?");

-- Réponses pour la question 234
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1241, "font-weight", 1, 234),
(1242, "weight-font", 0, 234),
(1243, "text-weight", 0, 234),
(1244, "boldness", 0, 234),
(1245, "font: weight;", 0, 234);

-- Question 234 liée à la catégorie 45
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(234, 45);

--- **************************
--- * Question 235 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(235, "Quelle propriété CSS est utilisée pour définir la couleur du texte d'un élément ?");

-- Réponses pour la question 235
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1246, "color", 1, 235),
(1247, "text-color", 0, 235),
(1248, "element-color", 0, 235),
(1249, "text: color;", 0, 235),
(1250, "color: text;", 0, 235);

-- Question 235 liée à la catégorie 45
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(235, 45);

--- **************************
--- * Question 236 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(236, "Quelle propriété CSS est utilisée pour définir la marge extérieure d'un élément ?");

-- Réponses pour la question 236
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1251, "margin", 1, 236),
(1252, "outer-margin", 0, 236),
(1253, "element-margin", 0, 236),
(1254, "margin: outer;", 0, 236),
(1255, "outer: margin;", 0, 236);

-- Question 236 liée à la catégorie 45
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(236, 45);

--- **************************
--- * Question 237 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(237, "Quelle propriété CSS est utilisée pour définir la largeur d'un élément ?");

-- Réponses pour la question 237
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1256, "width", 1, 237),
(1257, "element-width", 0, 237),
(1258, "wide", 0, 237),
(1259, "width: element;", 0, 237),
(1260, "element: width;", 0, 237);

-- Question 237 liée à la catégorie 45
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(237, 45);

--- **************************
--- * Question 238 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(238, "Quelle propriété CSS est utilisée pour définir la hauteur d'un élément ?");

-- Réponses pour la question 238
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1261, "height", 1, 238),
(1262, "element-height", 0, 238),
(1263, "tall", 0, 238),
(1264, "height: element;", 0, 238),
(1265, "element: height;", 0, 238);

-- Question 238 liée à la catégorie 45
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(238, 45);

--- **************************
--- * Question 239 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(239, "Quelle propriété CSS est utilisée pour définir la bordure d'un élément ?");

-- Réponses pour la question 239
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1266, "border", 1, 239),
(1267, "element-border", 0, 239),
(1268, "frame", 0, 239),
(1269, "border: element;", 0, 239),
(1270, "element: border;", 0, 239);

-- Question 239 liée à la catégorie 45
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(239, 45);

--- **************************
--- * Question 240 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(240, "Quelle propriété CSS est utilisée pour définir la couleur de fond d'un élément ?");

-- Réponses pour la question 240
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1271, "background-color", 1, 240),
(1272, "element-background", 0, 240),
(1273, "color-background", 0, 240),
(1274, "background: color;", 0, 240),
(1275, "color: background;", 0, 240);

-- Question 240 liée à la catégorie 45
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(240, 45);

--- **************************
--- * Question 241 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(241, "Quelle propriété CSS est utilisée pour centrer horizontalement du texte ?");

-- Réponses pour la question 241
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1276, "text-align", 1, 241),
(1277, "horizontal-align", 0, 241),
(1278, "center-text", 0, 241),
(1279, "text: center;", 0, 241),
(1280, "center: text;", 0, 241);

-- Question 241 liée à la catégorie 45
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(241, 45);

--- **************************
--- * Question 242 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(242, "Quelle propriété CSS est utilisée pour définir la police de caractères d'un élément ?");

-- Réponses pour la question 242
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1281, "font-family", 1, 242),
(1282, "element-font", 0, 242),
(1283, "character-font", 0, 242),
(1284, "font: family;", 0, 242),
(1285, "family: font;", 0, 242);

-- Question 242 liée à la catégorie 45
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(242, 45);

--- **************************
--- * Question 243 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(243, "Quelle propriété CSS est utilisée pour définir l'espacement entre les lettres d'un texte ?");

-- Réponses pour la question 243
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1286, "letter-spacing", 1, 243),
(1287, "text-spacing", 0, 243),
(1288, "spacing-between-letters", 0, 243),
(1289, "letter: spacing;", 0, 243),
(1290, "spacing: letter;", 0, 243);

-- Question 243 liée à la catégorie 45
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(243, 45);

--- **************************
--- * Question 244 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(244, "Quelle propriété CSS est utilisée pour définir l'espacement entre les lignes d'un texte ?");

-- Réponses pour la question 244
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1291, "line-height", 1, 244),
(1292, "text-height", 0, 244),
(1293, "spacing-between-lines", 0, 244),
(1294, "line: height;", 0, 244),
(1295, "height: line;", 0, 244);

-- Question 244 liée à la catégorie 45
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(244, 45);


------------------------------------------------------------------------------------------
-------------------------------- Développement web : CSS --------------------------------
------------------------------------------------------------------------------------------
INSERT IGNORE INTO category (id, name) VALUES
    (46, 'JavaScript');

--- **************************
--- * Question 245 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(245, "Quelle est la syntaxe correcte pour écrire une boucle 'for' en JavaScript ?");

-- Réponses pour la question 245
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1296, "for (var i = 0; i < 5; i++)", 1, 245),
(1297, "loop (var i = 0; i < 5; i++)", 0, 245),
(1298, "while (var i = 0; i < 5; i++)", 0, 245),
(1299, "foreach (var i = 0; i < 5; i++)", 0, 245),
(1300, "repeat (var i = 0; i < 5; i++)", 0, 245);

-- Question 245 liée à la catégorie 46
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(245, 46);

--- **************************
--- * Question 246 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(246, "Quelle est la fonction en JavaScript qui est utilisée pour imprimer quelque chose dans la console ?");

-- Réponses pour la question 246
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1301, "console.log()", 1, 246),
(1302, "print.console()", 0, 246),
(1303, "log.console()", 0, 246),
(1304, "print.log()", 0, 246),
(1305, "debug.console()", 0, 246);

-- Question 246 liée à la catégorie 46
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(246, 46);

--- **************************
--- * Question 247 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(247, "Quelle est la méthode JavaScript qui est utilisée pour supprimer le dernier élément d'un tableau ?");

-- Réponses pour la question 247
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1306, "pop()", 1, 247),
(1307, "remove()", 0, 247),
(1308, "delete()", 0, 247),
(1309, "splice()", 0, 247),
(1310, "shift()", 0, 247);

-- Question 247 liée à la catégorie 46
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(247, 46);

--- **************************
--- * Question 248 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(248, "Quelle est la propriété CSS utilisée pour définir la taille de la police d'un texte ?");

-- Réponses pour la question 248
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1311, "font-size", 1, 248),
(1312, "text-size", 0, 248),
(1313, "font-style", 0, 248),
(1314, "text-style", 0, 248),
(1315, "size", 0, 248);

-- Question 248 liée à la catégorie 46
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(248, 46);

--- **************************
--- * Question 249 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(249, "Quelle est la méthode JavaScript utilisée pour trier les éléments d'un tableau ?");

-- Réponses pour la question 249
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1316, "sort()", 1, 249),
(1317, "order()", 0, 249),
(1318, "arrange()", 0, 249),
(1319, "group()", 0, 249),
(1320, "shuffle()", 0, 249);

-- Question 249 liée à la catégorie 46
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(249, 46);


--- **************************
--- * Question 250 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(250, "Quel est le résultat de l'expression 2 + '2' en JavaScript ?");

-- Réponses pour la question 250
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1321, "'22'", 1, 250),
(1322, "4", 0, 250),
(1323, "22", 0, 250),
(1324, "Erreur", 0, 250),
(1325, "undefined", 0, 250);

-- Question 250 liée à la catégorie 46
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(250, 46);

--- **************************
--- * Question 251 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(251, "Quelle méthode JavaScript est utilisée pour rediriger vers une autre page ?");

-- Réponses pour la question 251
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1326, "window.location.href", 1, 251),
(1327, "redirect()", 0, 251),
(1328, "goTo()", 0, 251),
(1329, "changePage()", 0, 251),
(1330, "switchPage()", 0, 251);

-- Question 251 liée à la catégorie 46
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(251, 46);

--- **************************
--- * Question 252 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(252, "Quelle est la méthode utilisée pour parcourir tous les éléments d'un tableau en JavaScript ?");

-- Réponses pour la question 252
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1331, "forEach()", 1, 252),
(1332, "forAll()", 0, 252),
(1333, "iterate()", 0, 252),
(1334, "loopThrough()", 0, 252),
(1335, "arrayEach()", 0, 252);

-- Question 252 liée à la catégorie 46
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(252, 46);

--- **************************
--- * Question 253 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(253, "Quel est le rôle de l'opérateur 'typeof' en JavaScript ?");

-- Réponses pour la question 253
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1336, "Obtenir le type d'une variable", 1, 253),
(1337, "Comparer deux variables", 0, 253),
(1338, "Attribuer un type à une variable", 0, 253),
(1339, "Vérifier si une variable est définie", 0, 253),
(1340, "Calculer le type d'une expression", 0, 253);

-- Question 253 liée à la catégorie 46
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(253, 46);

--- **************************
--- * Question 254 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(254, "Quelle est la différence entre 'let' et 'var' pour déclarer des variables en JavaScript ?");

-- Réponses pour la question 254
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1341, "'let' a une portée de bloc, 'var' a une portée de fonction", 1, 254),
(1342, "'var' a une portée de bloc, 'let' a une portée de fonction", 0, 254),
(1343, "'let' et 'var' ont une portée de bloc", 0, 254),
(1344, "'var' et 'let' ont une portée de fonction", 0, 254),
(1345, "Il n'y a pas de différence", 0, 254);

-- Question 254 liée à la catégorie 46
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(254, 46);

--- **************************
--- * Question 255 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(255, "Quel est l'opérateur utilisé pour la concaténation de chaînes en JavaScript ?");

-- Réponses pour la question 255
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1346, "+", 1, 255),
(1347, "&", 0, 255),
(1348, ".", 0, 255),
(1349, ",", 0, 255),
(1350, "concat()", 0, 255);

-- Question 255 liée à la catégorie 46
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(255, 46);

--- **************************
--- * Question 256 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(256, "Quelle est la méthode JavaScript utilisée pour ajouter un élément au début d'un tableau ?");

-- Réponses pour la question 256
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1351, "unshift()", 1, 256),
(1352, "push()", 0, 256),
(1353, "addFirst()", 0, 256),
(1354, "insertBefore()", 0, 256),
(1355, "prepend()", 0, 256);

-- Question 256 liée à la catégorie 46
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(256, 46);

--- **************************
--- * Question 257 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(257, "Quelle est la méthode JavaScript utilisée pour convertir une chaîne en majuscules ?");

-- Réponses pour la question 257
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1356, "toUpperCase()", 1, 257),
(1357, "toUpper()", 0, 257),
(1358, "changeCase('upper')", 0, 257),
(1359, "toUpperCaseCase()", 0, 257),
(1360, "caseChange('upper')", 0, 257);

-- Question 257 liée à la catégorie 46
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(257, 46);

--- **************************
--- * Question 258 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(258, "Quelle est la méthode JavaScript utilisée pour arrondir un nombre à l'entier le plus proche ?");

-- Réponses pour la question 258
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1361, "Math.round()", 1, 258),
(1362, "Math.floor()", 0, 258),
(1363, "Math.ceiling()", 0, 258),
(1364, "Math.integer()", 0, 258),
(1365, "Math.absolute()", 0, 258);

-- Question 258 liée à la catégorie 46
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(258, 46);

--- **************************
--- * Question 259 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(259, "Quelle est la méthode JavaScript utilisée pour vérifier si un tableau contient une certaine valeur ?");

-- Réponses pour la question 259
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1366, "includes()", 1, 259),
(1367, "contains()", 0, 259),
(1368, "hasValue()", 0, 259),
(1369, "exist()", 0, 259),
(1370, "find()", 0, 259);

-- Question 259 liée à la catégorie 46
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(259, 46);


--- **************************
--- * Question 260 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(260, "Quelle est la différence entre '==' et '===' en JavaScript pour la comparaison de valeurs ?");

-- Réponses pour la question 260
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1371, "'==' compare les valeurs, '===' compare les valeurs et les types", 1, 260),
(1372, "'===' compare seulement les valeurs", 0, 260),
(1373, "'==' compare seulement les types", 0, 260),
(1374, "'===' et '==' sont interchangeables", 0, 260),
(1375, "'==' et '===' signifient la même chose", 0, 260);

-- Question 260 liée à la catégorie 46
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(260, 46);

--- **************************
--- * Question 261 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(261, "Quelle est la méthode JavaScript utilisée pour supprimer le dernier élément d'un tableau ?");

-- Réponses pour la question 261
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1376, "pop()", 1, 261),
(1377, "remove()", 0, 261),
(1378, "delete()", 0, 261),
(1379, "splice()", 0, 261),
(1380, "cut()", 0, 261);

-- Question 261 liée à la catégorie 46
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(261, 46);

--- **************************
--- * Question 262 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(262, "Quelle est la méthode JavaScript utilisée pour trier les éléments d'un tableau ?");

-- Réponses pour la question 262
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1381, "sort()", 1, 262),
(1382, "order()", 0, 262),
(1383, "arrange()", 0, 262),
(1384, "organize()", 0, 262),
(1385, "group()", 0, 262);

-- Question 262 liée à la catégorie 46
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(262, 46);

--- **************************
--- * Question 263 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(263, "Quelle est la méthode JavaScript utilisée pour récupérer la longueur d'un tableau ?");

-- Réponses pour la question 263
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1386, "length", 1, 263),
(1387, "size()", 0, 263),
(1388, "count()", 0, 263),
(1389, "getLength()", 0, 263),
(1390, "measure()", 0, 263);

-- Question 263 liée à la catégorie 46
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(263, 46);

--- **************************
--- * Question 264 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(264, "Quel événement JavaScript est déclenché lorsqu'un utilisateur clique sur un élément HTML ?");

-- Réponses pour la question 264
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1391, "click", 1, 264),
(1392, "clack", 0, 264),
(1393, "tap", 0, 264),
(1394, "press", 0, 264),
(1395, "select", 0, 264);

-- Question 264 liée à la catégorie 46
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(264, 46);

--- **************************
--- * Question 265 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(265, "Comment déclare-t-on une fonction anonyme en JavaScript ?");

-- Réponses pour la question 265
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1396, "function() {}", 1, 265),
(1397, "func = {}", 0, 265),
(1398, "anonymous() {}", 0, 265),
(1399, "declare.function() {}", 0, 265),
(1400, "function.anonymous() {}", 0, 265);

-- Question 265 liée à la catégorie 46
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(265, 46);

--- **************************
--- * Question 266 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(266, "Quelle est la méthode JavaScript utilisée pour afficher une boîte de dialogue avec OK et Annuler ?");

-- Réponses pour la question 266
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1401, "confirm()", 1, 266),
(1402, "prompt()", 0, 266),
(1403, "alert()", 0, 266),
(1404, "message()", 0, 266),
(1405, "question()", 0, 266);

-- Question 266 liée à la catégorie 46
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(266, 46);

--- **************************
--- * Question 267 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(267, "Quelle est la méthode JavaScript utilisée pour créer une expression régulière ?");

-- Réponses pour la question 267
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1406, "/pattern/", 1, 267),
(1407, "regex('pattern')", 0, 267),
(1408, "expression('pattern')", 0, 267),
(1409, "regExp('pattern')", 0, 267),
(1410, "pattern()", 0, 267);

-- Question 267 liée à la catégorie 46
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(267, 46);

--- **************************
--- * Question 268 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(268, "Quel est le résultat de l'expression JavaScript : 5 + '2' ?");

-- Réponses pour la question 268
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1411, "52", 1, 268),
(1412, "7", 0, 268),
(1413, "10", 0, 268),
(1414, "25", 0, 268),
(1415, "undefined", 0, 268);

-- Question 268 liée à la catégorie 46
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(268, 46);

--- **************************
--- * Question 269 *
--- **************************
INSERT IGNORE INTO question (id, title) VALUES
(269, "Quelle est la méthode JavaScript utilisée pour découper une chaîne de caractères en un tableau de sous-chaînes ?");

-- Réponses pour la question 269
INSERT IGNORE INTO answers (id, title, is_correct, question_id) VALUES
(1416, "split()", 1, 269),
(1417, "slice()", 0, 269),
(1418, "divide()", 0, 269),
(1419, "break()", 0, 269),
(1420, "explode()", 0, 269);

-- Question 269 liée à la catégorie 46
INSERT IGNORE INTO question_categories (question_id, categories_id) VALUES
(269, 46);


------------------------------------------------------------------------------------------
-------------------------------- PHP --------------------------------
------------------------------------------------------------------------------------------
INSERT IGNORE INTO category (id, name) VALUES
    (47, 'PHP');

------------------------------------------------------------------------------------------
-------------------------------- SQL --------------------------------
------------------------------------------------------------------------------------------
INSERT IGNORE INTO category (id, name) VALUES
    (48, 'SQL');

------------------------------------------------------------------------------------------
-------------------------------- Spring Boot --------------------------------
------------------------------------------------------------------------------------------
INSERT IGNORE INTO category (id, name) VALUES
    (49, 'Spring Boot');

------------------------------------------------------------------------------------------
-------------------------------- Symfony --------------------------------
------------------------------------------------------------------------------------------
INSERT IGNORE INTO category (id, name) VALUES
    (50, 'Symfony');

------------------------------------------------------------------------------------------
-------------------------------- Angular --------------------------------
------------------------------------------------------------------------------------------
INSERT IGNORE INTO category (id, name) VALUES
    (51, 'Angular');


