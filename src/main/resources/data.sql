-- Utilisez UTF-8 pour l'encodage
SET NAMES utf8mb4;
SET CHARACTER SET utf8mb4;

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


-- Insertion des questions quizz partie n°1
INSERT IGNORE INTO question (id, title) VALUES
(1, 'Quelle est la capitale de l''Espagne ?'),
(2, 'Quelle est la capitale du Kenya ?'),
(3, 'Quelle est la capitale de l''Indonésie ?'),
(4, 'Quelle est la capitale du Pérou ?'),
(5, 'Quelle est la capitale de la Turquie ?'),
(6, 'Quelle est la capitale du Canada ?'),
(7, 'Quelle est la capitale de l''Afrique du Sud ?'),
(8, 'Quelle est la capitale de l''Égypte ?'),
(9, 'Quelle est la capitale de la Suède ?'),
(10, 'Quelle est la capitale de l''Australie ?');

-- Insertion des réponses classées par ID croissant
INSERT IGNORE INTO answers (id, title) VALUES
(1, 'Barcelone'),
(2, 'Madrid'),
(3, 'Lisbonne'),
(4, 'Rome'),
(5, 'Nairobi'),
(6, 'Addis-Abeba'),
(7, 'Accra'),
(8, 'Kampala'),
(9, 'Bangkok'),
(10, 'Jakarta'),
(11, 'Kuala Lumpur'),
(12, 'Manille'),
(13, 'Quito'),
(14, 'Lima'),
(15, 'Bogota'),
(16, 'Caracas'),
(17, 'Istanbul'),
(18, 'Ankara'),
(19, 'Athènes'),
(20, 'Tbilissi'),
(21, 'Vancouver'),
(22, 'Toronto'),
(23, 'Ottawa'),
(24, 'Montréal'),
(25, 'Calgary'),
(26, 'Edmonton'),
(27, 'Johannesbourg'),
(28, 'Pretoria'),
(29, 'Le Cap'),
(30, 'Bloemfontein'),
(31, 'Pretoria'),
(32, 'Alexandrie'),
(33, 'Le Caire'),
(34, 'Sharm el-Sheikh'),
(35, 'Louxor'),
(36, 'Oslo'),
(37, 'Helsinki'),
(38, 'Stockholm'),
(39, 'Copenhague'),
(40, 'Sydney'),
(41, 'Melbourne'),
(42, 'Canberra'),
(43, 'Brisbane');

-- Insertion des liens entre questions et réponses correctes pour la Question 1
INSERT IGNORE INTO answers_questions (id, is_correct, answers_id, question_id) VALUES
(1, 0, 1, 1),   -- Question 1, réponse Barcelone incorrecte
(2, 1, 2, 1),   -- Question 1, réponse Madrid correcte
(3, 0, 3, 1),   -- Question 1, réponse Lisbonne incorrecte
(4, 0, 4, 1);   -- Question 1, réponse Rome incorrecte

-- Insertion des liens entre questions et réponses correctes pour la Question 2
INSERT IGNORE INTO answers_questions (id, is_correct, answers_id, question_id) VALUES
(5, 1, 5, 2),   -- Question 2, réponse Nairobi correcte
(6, 0, 6, 2),   -- Question 2, réponse Addis-Abeba incorrecte
(7, 0, 7, 2),   -- Question 2, réponse Accra incorrecte
(8, 0, 8, 2);   -- Question 2, réponse Kampala incorrecte

-- Insertion des liens entre questions et réponses correctes pour la Question 3
INSERT IGNORE INTO answers_questions (id, is_correct, answers_id, question_id) VALUES
(9, 0, 9, 3),   -- Question 3, réponse Bangkok incorrecte
(10, 1, 10, 3),  -- Question 3, réponse Jakarta correcte
(11, 0, 11, 3),  -- Question 3, réponse Kuala Lumpur incorrecte
(12, 0, 12, 3);  -- Question 3, réponse Manille incorrecte

-- Insertion des liens entre questions et réponses correctes pour la Question 4
INSERT IGNORE INTO answers_questions (id, is_correct, answers_id, question_id) VALUES
(13, 0, 13, 4),  -- Question 4, réponse Quito incorrecte
(14, 1, 14, 4),  -- Question 4, réponse Lima correcte
(15, 0, 15, 4),  -- Question 4, réponse Bogota incorrecte
(16, 0, 16, 4);  -- Question 4, réponse Caracas incorrecte

-- Insertion des liens entre questions et réponses correctes pour la Question 5
INSERT IGNORE INTO answers_questions (id, is_correct, answers_id, question_id) VALUES
(17, 0, 17, 5),  -- Question 5, réponse Istanbul incorrecte
(18, 1, 18, 5),  -- Question 5, réponse Ankara correcte
(19, 0, 19, 5),  -- Question 5, réponse Athènes incorrecte
(20, 0, 20, 5);  -- Question 5, réponse Tbilissi incorrecte

-- Insertion des liens entre questions et réponses correctes pour la Question 6
INSERT IGNORE INTO answers_questions (id, is_correct, answers_id, question_id) VALUES
(21, 0, 21, 6),  -- Question 6, réponse Vancouver incorrecte
(22, 0, 22, 6),  -- Question 6, réponse Toronto incorrecte
(23, 1, 23, 6),  -- Question 6, réponse Ottawa correcte
(24, 0, 24, 6);  -- Question 6, réponse Montréal incorrecte

-- Insertion des liens entre questions et réponses correctes pour la Question 7
INSERT IGNORE INTO answers_questions (id, is_correct, answers_id, question_id) VALUES
(25, 0, 25, 7),  -- Question 7, réponse Calgary incorrecte
(26, 0, 26, 7),  -- Question 7, réponse Edmonton incorrecte
(27, 0, 27, 7),  -- Question 7, réponse Johannesbourg incorrecte
(28, 1, 28, 7),  -- Question 7, réponse Pretoria correcte
(29, 0, 29, 7),  -- Question 7, réponse Le Cap incorrecte
(30, 0, 30, 7);  -- Question 7, réponse Bloemfontein incorrecte

-- Insertion des liens entre questions et réponses correctes pour la Question 8
INSERT IGNORE INTO answers_questions (id, is_correct, answers_id, question_id) VALUES
(31, 0, 31, 8),  -- Question 8, réponse Pretoria incorrecte
(32, 0, 32, 8),  -- Question 8, réponse Alexandrie incorrecte
(33, 1, 33, 8),  -- Question 8, réponse Le Caire correcte
(34, 0, 34, 8);  -- Question 8, réponse Sharm el-Sheikh incorrecte

-- Insertion des liens entre questions et réponses correctes pour la Question 9
INSERT IGNORE INTO answers_questions (id, is_correct, answers_id, question_id) VALUES
(35, 0, 35, 9),  -- Question 9, réponse Louxor incorrecte
(36, 0, 36, 9),  -- Question 9, réponse Oslo incorrecte
(37, 0, 37, 9),  -- Question 9, réponse Helsinki incorrecte
(38, 1, 38, 9);  -- Question 9, réponse Stockholm correcte

-- Insertion des liens entre questions et réponses correctes pour la Question 10
INSERT IGNORE INTO answers_questions (id, is_correct, answers_id, question_id) VALUES
(39, 0, 39, 10),  -- Question 10, réponse Copenhague incorrecte
(40, 0, 40, 10),  -- Question 10, réponse Sydney incorrecte
(41, 0, 41, 10),  -- Question 10, réponse Melbourne incorrecte
(42, 1, 42, 10);  -- Question 10, réponse Canberra correcte


-- Table des questions quizz partie n°2
INSERT IGNORE INTO question (id, title) VALUES
(11, 'Quelle capitale est célèbre pour son opéra situé sur la place de la Bastille ?'),
(12, 'Dans quelle capitale sud-américaine se trouve la célèbre statue du Christ Rédempteur ?'),
(13, 'Quelle capitale européenne est traversée par la rivière Danube ?'),
(14, 'Dans quelle capitale asiatique se trouve le célèbre temple du Bouddha d\'émeraude ?'),
(15, 'Quelle capitale africaine est située sur les rives du fleuve Niger ?'),
(16, 'Quelle capitale nord-américaine est célèbre pour son opéra situé à Covent Garden ?'),
(17, 'Dans quelle capitale européenne se trouve la cathédrale Saint-Basile sur la place Rouge ?'),
(18, 'Quelle capitale asiatique est célèbre pour ses temples, dont le Wat Arun et le Wat Pho ?'),
(19, 'Quelle capitale européenne est traversée par le fleuve Tibre ?'),
(20, 'Dans quelle capitale africaine se trouve le musée national du Kenya, abritant des découvertes archéologiques ?');

-- Table des réponses quizz partie n°2
INSERT IGNORE INTO answers (id, title) VALUES
(44, 'Paris'),
(45, 'Madrid'),
(46, 'Vienne'),
(47, 'Berlin'),
(48, 'Rio de Janeiro'),
(49, 'Buenos Aires'),
(50, 'Bogota'),
(51, 'Lima'),
(52, 'Budapest'),
(53, 'Vienne'),
(54, 'Prague'),
(55, 'Varsovie'),
(56, 'Bangkok'),
(57, 'Pékin'),
(58, 'Tokyo'),
(59, 'Séoul'),
(60, 'Bamako'),
(61, 'Dakar'),
(62, 'Accra'),
(63, 'Nairobi'),
(64, 'Londres'),
(65, 'New York'),
(66, 'Toronto'),
(67, 'Mexico'),
(68, 'Moscou'),
(69, 'Berlin'),
(70, 'Varsovie'),
(71, 'Bangkok'),
(72, 'Pékin'),
(73, 'Tokyo'),
(74, 'Delhi'),
(75, 'Rome'),
(76, 'Madrid'),
(77, 'Prague'),
(78, 'Paris'),
(79, 'Nairobi'),
(80, 'Le Caire'),
(81, 'Pretoria'),
(82, 'Rabat');

-- Table des liens entre questions et réponses quizz partie n°2
INSERT IGNORE INTO answers_questions (id, is_correct, answers_id, question_id) VALUES
(83, 1, 44, 11),  -- Question 11, réponse correcte Paris
(84, 0, 45, 11),  -- Question 11, réponse Madrid incorrecte
(85, 0, 46, 11),  -- Question 11, réponse Vienne incorrecte
(86, 0, 47, 11);  -- Question 11, réponse Berlin incorrecte

-- Table des liens entre questions et réponses correctes pour la Question 12
INSERT IGNORE INTO answers_questions (id, is_correct, answers_id, question_id) VALUES
(87, 0, 48, 12),  -- Question 12, réponse Buenos Aires incorrecte
(88, 1, 49, 12),  -- Question 12, réponse correcte Rio de Janeiro
(89, 0, 50, 12),  -- Question 12, réponse Bogota incorrecte
(90, 0, 51, 12);  -- Question 12, réponse Lima incorrecte

-- Table des liens entre questions et réponses correctes pour la Question 13
INSERT IGNORE INTO answers_questions (id, is_correct, answers_id, question_id) VALUES
(91, 0, 52, 13),  -- Question 13, réponse Vienne incorrecte
(92, 0, 53, 13),  -- Question 13, réponse Prague incorrecte
(93, 1, 54, 13),  -- Question 13, réponse correcte Budapest
(94, 0, 55, 13);  -- Question 13, réponse Varsovie incorrecte

-- Table des liens entre questions et réponses correctes pour la Question 14
INSERT IGNORE INTO answers_questions (id, is_correct, answers_id, question_id) VALUES
(95, 0, 56, 14),  -- Question 14, réponse Pékin incorrecte
(96, 0, 57, 14),  -- Question 14, réponse Tokyo incorrecte
(97, 1, 58, 14),  -- Question 14, réponse correcte Bangkok
(98, 0, 59, 14);  -- Question 14, réponse Séoul incorrecte

-- Table des liens entre questions et réponses correctes pour la Question 15
INSERT IGNORE INTO answers_questions (id, is_correct, answers_id, question_id) VALUES
(99, 0, 60, 15),   -- Question 15, réponse Dakar incorrecte
(100, 0, 61, 15),  -- Question 15, réponse Accra incorrecte
(101, 0, 62, 15),  -- Question 15, réponse Nairobi incorrecte
(102, 1, 63, 15);  -- Question 15, réponse correcte Bamako

-- Table des liens entre questions et réponses correctes pour la Question 16
INSERT IGNORE INTO answers_questions (id, is_correct, answers_id, question_id) VALUES
(103, 0, 64, 16),  -- Question 16, réponse Londres incorrecte
(104, 0, 65, 16),  -- Question 16, réponse New York incorrecte
(105, 0, 66, 16),  -- Question 16, réponse Toronto incorrecte
(106, 1, 67, 16);  -- Question 16, réponse correcte Mexico

-- Table des liens entre questions et réponses correctes pour la Question 17
INSERT IGNORE INTO answers_questions (id, is_correct, answers_id, question_id) VALUES
(107, 0, 68, 17),  -- Question 17, réponse Moscou incorrecte
(108, 1, 69, 17),  -- Question 17, réponse correcte Berlin
(109, 0, 70, 17),  -- Question 17, réponse Varsovie incorrecte
(110, 0, 71, 17);  -- Question 17, réponse Bangkok incorrecte

-- Table des liens entre questions et réponses correctes pour la Question 18
INSERT IGNORE INTO answers_questions (id, is_correct, answers_id, question_id) VALUES
(111, 0, 72, 18),  -- Question 18, réponse Pékin incorrecte
(112, 0, 73, 18),  -- Question 18, réponse Tokyo incorrecte
(113, 1, 74, 18),  -- Question 18, réponse correcte Delhi
(114, 0, 75, 18);  -- Question 18, réponse Rome incorrecte

-- Table des liens entre questions et réponses correctes pour la Question 19
INSERT IGNORE INTO answers_questions (id, is_correct, answers_id, question_id) VALUES
(115, 0, 76, 19),  -- Question 19, réponse Paris incorrecte
(116, 0, 77, 19),  -- Question 19, réponse Madrid incorrecte
(117, 0, 78, 19),  -- Question 19, réponse Prague incorrecte
(118, 1, 79, 19);  -- Question 19, réponse correcte Nairobi

-- Table des liens entre questions et réponses correctes pour la Question 20
INSERT IGNORE INTO answers_questions (id, is_correct, answers_id, question_id) VALUES
(119, 0, 80, 20),  -- Question 20, réponse Le Caire incorrecte
(120, 0, 81, 20),  -- Question 20, réponse Pretoria incorrecte
(121, 0, 82, 20),  -- Question 20, réponse Rabat incorrecte
(122, 1, 83, 20);  -- Question 20, réponse correcte Le Caire


