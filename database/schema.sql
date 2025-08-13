
CREATE DATABASE IF NOT EXISTS georgian_ufc_fighters;
USE georgian_ufc_fighters;

-- Main fighters table
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
    current_status ENUM('Active','Retired', 'Released', 'Suspended'),
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

-- Fight records table
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

-- Create view for easy overview
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