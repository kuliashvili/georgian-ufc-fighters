CREATE DATABASE georgian_ufc_fighters;
USE georgian_ufc_fighters;

CREATE TABLE fighters (
	fighter_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    nickname VARCHAR(50),
    age INT,
    birthplace VARCHAR(50),
    georgian_region VARCHAR(50),
    height_cm INT,
    weight_lbs INT,
    reach_inches DECIMAL(4,1),
    stance ENUM('Orthodox', 'Southpaw', 'Switch'),
    ufc_debut_date DATE,
    current_status ENUM('Active','Retired', 'Released', 'Suspended' ),
    fighting_style VARCHAR(50),
    main_disciplines VARCHAR(50),
    team_gym VARCHAR(50),
    instagram_handle VARCHAR(100),
    total_ufc_fights INT DEFAULT 0,
    ufc_wins INT DEFAULT 0,
    ufc_losses INT DEFAULT 0,
    ufc_draws INT DEFAULT 0,
    finish_rate_percentage DECIMAL(5,2),
    ko_tko_wins INT DEFAULT 0,
    submission_wins INT DEFAULT 0,
    decision_wins INT DEFAULT 0,
    striking_accuracy_percentage DECIMAL(5,2),
    significant_strikes_per_minute DECIMAL(4,2),
    significant_strikes_absorbed_per_minute DECIMAL(4,2),
    takedown_accuracy_percentage DECIMAL(5,2),
    takedown_defense_percentage DECIMAL(4,2),
    average_takedowns_per_fight DECIMAL(4,2),
    submission_attempts_per_fight DECIMAL(4,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);



CREATE TABLE fight_records (
	fight_id INT PRIMARY KEY AUTO_INCREMENT,
    fighter_id INT,
    opponent_name VARCHAR(50) NOT NULL,
    fight_date DATE,
    venue VARCHAR(100),
    location VARCHAR(100),
    weight_class VARCHAR(50),
    result ENUM('Win', 'Loss', 'Draw', 'NC'),
    method VARCHAR(100),
    round_finished INT,
    referee VARCHAR(100),
    significant_strikes_landed INT,
    significant_strikes_attempted INT,
    takedowns_landed INT,
    takedowns_attempted INT,
    performance_bonus BOOLEAN DEFAULT FALSE,
    bonus_type VARCHAR(50),
    pre_fight_ranking INT,
    post_fight_ranking INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (fighter_id) REFERENCES fighters(fighter_id) ON DELETE CASCADE

);




INSERT INTO fighters (
    first_name, last_name, nickname, age, birthplace, georgian_region,
    height_cm, weight_lbs, reach_inches, stance,
    ufc_debut_date, current_status, fighting_style, main_disciplines, team_gym,
    instagram_handle, total_ufc_fights, ufc_wins, ufc_losses,
    finish_rate_percentage, ko_tko_wins, submission_wins, decision_wins,
    striking_accuracy_percentage, significant_strikes_per_minute,
    takedown_accuracy_percentage, takedown_defense_percentage
) VALUES 
-- Ilia Topuria (Current Featherweight Champion)
('Ilia', 'Topuria', 'El Matador', 27, 'Halle, Germany', 'Born to Georgian parents',
 170, 145, 69.0, 'Orthodox',
 '2020-10-10', 'Active', 'Boxing/Wrestling', 'Boxing, Wrestling, BJJ', 'Climent Club',
 '@iliatopuria', 8, 8, 0,
 75.00, 4, 2, 2,
 52.5, 4.85,
 50.0, 85.7),

-- Merab Dvalishvili (Current Bantamweight Champion)
('Merab', 'Dvalishvili', 'The Machine', 33, 'Tbilisi, Georgia', 'Tbilisi',
 168, 135, 68.0, 'Orthodox',
 '2017-06-25', 'Active', 'Wrestling/Cardio', 'Wrestling, Cardio, Striking', 'Serra-Longo Fight Team',
 '@merabdvalishvili', 17, 12, 2,
 25.00, 1, 0, 11,
 45.2, 3.95,
 43.8, 75.5),

-- Giga Chikadze 
('Giga', 'Chikadze', 'Ninja', 36, 'Tbilisi, Georgia', 'Tbilisi',
 183, 145, 75.0, 'Orthodox',
 '2019-11-02', 'Active', 'Kickboxing', 'Kickboxing, Muay Thai', 'Kings MMA',
 '@giga_chikadze', 8, 5, 3,
 40.00, 2, 0, 3,
 48.9, 4.12,
 25.0, 66.7),

-- Roman Dolidze
('Roman', 'Dolidze', 'The Caucasian', 36, 'Gori, Georgia', 'Shida Kartli',
 185, 185, 76.0, 'Orthodox',
 '2020-07-15', 'Active', 'Sambo/Wrestling', 'Sambo, Wrestling, Boxing', 'Kings MMA',
 '@roman_dolidze', 9, 6, 3,
 50.00, 2, 1, 3,
 44.1, 3.25,
 37.5, 72.2);
 
 SELECT * FROM fighters;
 
 
 INSERT INTO fight_records (
    fighter_id, opponent_name, fight_date, venue, location,
    weight_class, result, method, round_finished,
    performance_bonus, bonus_type
) VALUES 
-- Ilia Topuria's title win
(1, 'Alexander Volkanovski', '2024-02-17', 'Honda Center', 'Anaheim, CA',
 'Featherweight', 'Win', 'KO (Punch)', 2,
 TRUE, 'Performance of the Night'),

-- Merab's title win  
(2, 'Sean O\'Malley', '2024-09-14', 'Sphere', 'Las Vegas, NV',
 'Bantamweight', 'Win', 'Decision (Unanimous)', 5,
 FALSE, NULL);
 
 SELECT * FROM fight_records;
 
 
 
 CREATE VIEW fighter_overview AS
SELECT 
    CONCAT(first_name, ' ', last_name) as full_name,
    nickname,
    age,
    birthplace,
    georgian_region,
    CONCAT(height_cm, ' cm') as height,
    CONCAT(weight_lbs, ' lbs') as weight,
    stance,
    current_status,
    fighting_style,
    team_gym,
    instagram_handle,
    CONCAT(ufc_wins, '-', ufc_losses, '-', ufc_draws) as ufc_record,
    finish_rate_percentage,
    striking_accuracy_percentage,
    takedown_accuracy_percentage
FROM fighters
ORDER BY current_status, ufc_wins DESC;


SELECT * FROM fighter_overview;
 