
USE georgian_ufc_fighters;

-- Insert Georgian UFC fighters
INSERT INTO fighters (
    first_name, last_name, nickname, age, birthplace, georgian_region,
    height_cm, weight_lbs, reach_inches, stance,
    ufc_debut_date, current_status, fighting_style, main_disciplines, team_gym,
    instagram_handle, total_ufc_fights, ufc_wins, ufc_losses,
    finish_rate_percentage, ko_tko_wins, submission_wins, decision_wins,
    striking_accuracy_percentage, significant_strikes_per_minute,
    takedown_accuracy_percentage, takedown_defense_percentage
) VALUES 
('Ilia', 'Topuria', 'El Matador', 27, 'Halle, Germany', 'Born to Georgian parents',
 170, 145, 69.0, 'Orthodox',
 '2020-10-10', 'Active', 'Boxing/Wrestling', 'Boxing, Wrestling, BJJ', 'Climent Club',
 '@iliatopuria', 8, 8, 0,
 75.00, 4, 2, 2,
 52.5, 4.85,
 50.0, 85.7),

('Merab', 'Dvalishvili', 'The Machine', 33, 'Tbilisi, Georgia', 'Tbilisi',
 168, 135, 68.0, 'Orthodox',
 '2017-06-25', 'Active', 'Wrestling/Cardio', 'Wrestling, Cardio, Striking', 'Serra-Longo Fight Team',
 '@merabdvalishvili', 17, 12, 2,
 25.00, 1, 0, 11,
 45.2, 3.95,
 43.8, 75.5),

('Giga', 'Chikadze', 'Ninja', 36, 'Tbilisi, Georgia', 'Tbilisi',
 183, 145, 75.0, 'Orthodox',
 '2019-11-02', 'Active', 'Kickboxing', 'Kickboxing, Muay Thai', 'Kings MMA',
 '@giga_chikadze', 8, 5, 3,
 40.00, 2, 0, 3,
 48.9, 4.12,
 25.0, 66.7),

('Roman', 'Dolidze', 'The Caucasian', 36, 'Gori, Georgia', 'Shida Kartli',
 185, 185, 76.0, 'Orthodox',
 '2020-07-15', 'Active', 'Sambo/Wrestling', 'Sambo, Wrestling, Boxing', 'Kings MMA',
 '@roman_dolidze', 9, 6, 3,
 50.00, 2, 1, 3,
 44.1, 3.25,
 37.5, 72.2);

-- Insert notable fight records
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
 FALSE, NULL),

-- Giga's notable win
(3, 'Edson Barboza', '2021-08-28', 'UFC Apex', 'Las Vegas, NV',
 'Featherweight', 'Win', 'TKO (Leg Kicks)', 3,
 TRUE, 'Performance of the Night');