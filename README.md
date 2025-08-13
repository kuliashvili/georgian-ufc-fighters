# Georgian UFC Fighters Database

MySQL database tracking all Georgian fighters who have competed in the Ultimate Fighting Championship (UFC), celebrating Georgia's rising dominance in mixed martial arts.

##  Current Georgian Champions
- **Ilia Topuria** - UFC Featherweight Champion (155 lbs)
- **Merab Dvalishvili** - UFC Bantamweight Champion (135 lbs)

## Database Overview

This database contains detailed information about Georgian UFC fighters including:
- Fighter biographical information and physical stats
- UFC career records and performance metrics
- Individual fight records and outcomes
- Fighting styles and training backgrounds
- Social media presence and regional origins

## Database Structure for now

### Tables
1. **fighters** - Main fighter information and career statistics
2. **fight_records** - Detailed records of individual UFC fights
3. **fighter_overview** - View combining key fighter information


## Getting Started

### Prerequisites
- MySQL Server 8.0 or later
- MySQL Workbench (recommended)

### Installation
1. Clone this repository:
   ```bash
   git clone https://github.com/kuliashvili/georgian-ufc-fighters.git
   ```

2. Navigate to the database folder:
   ```bash
   cd georgian-ufc-fighters/database
   ```

3. Execute the SQL files in order:
   ```sql
   -- 1. Create database structure
   source schema.sql
   
   -- 2. Insert sample data
   source sample_data.sql
   ```

## Sample Queries

```sql
-- View all active Georgian fighters
SELECT * FROM fighter_overview WHERE current_status = 'Active';

-- Find fighters with highest finish rates
SELECT full_name, nickname, ufc_record, finish_rate_percentage 
FROM fighter_overview 
ORDER BY finish_rate_percentage DESC;

-- Championship fights
SELECT fr.*, f.first_name, f.last_name 
FROM fight_records fr
JOIN fighters f ON fr.fighter_id = f.fighter_id
WHERE fr.performance_bonus = TRUE;
```

##  Regular Updates

This database is regularly updated with:
- New Georgian fighters entering the UFC
- Latest fight results and statistics
- Updated performance metrics
- Career status changes

## 📊 Current Statistics
- **Total Georgian UFC Fighters**: 4 (and growing)
- **Active Champions**: 2
- **Combined UFC Wins**: 31
- **Average Finish Rate**: 47.5%

## Future Enhancements
- [ ] Add more historical Georgian fighters
- [ ] Include amateur MMA background data
- [ ] Add training camp and coaching staff information
- [ ] Create data visualization dashboard
- [ ] Implement fight prediction analytics

## Contributing
Contributions are welcome! If you have information about Georgian UFC fighters not included in this database, please:
1. Fork the repository
2. Add the fighter data following the existing schema
3. Submit a pull request with documentation

## About
Created with pride and love for Georgian MMA fighters, fans and data enthusiasts. This project showcases the incredible rise of Georgian fighters in the world's premier MMA organization.

**Made with ❤️ in Georgia**
