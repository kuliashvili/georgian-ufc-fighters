# Georgian UFC Fighters Database

MySQL database tracking all Georgian fighters who have competed in the Ultimate Fighting Championship (UFC), celebrating Georgia's rising dominance in mixed martial arts.

## Current Georgian Champions

- **Ilia Topuria** - UFC Lightweight Champion (155 lbs)
- **Merab Dvalishvili** - UFC Bantamweight Champion (135 lbs)

## Database Overview

This database contains information about Georgian UFC fighters including:

- **Personal Information**: Full names, nicknames, age, birthplace, and Georgian regional origins
- **Physical Attributes**: Height, weight, reach measurements, and fighting stance
- **Career Statistics**: Total MMA fights, wins, losses, draws, and finish rates
- **Fight Metrics**: KO/TKO wins, submission victories, and decision wins
- **UFC Career Data**: Debut dates, current status (Active/Retired/Released/Suspended)
- **Fighting Background**: Primary fighting styles, main disciplines, and training gyms
- **Social Media**: Instagram handles for following fighters' careers

## Database Structure

### Current Tables
- **fighters** - Complete fighter information and career statistics

*Note: Additional tables like `fight_records` for individual UFC bout details will be added in future updates.*

## Getting Started

### Quick Access
The easiest way to explore the data:

1. **Download the CSV file**: Get `fighters_data.csv` directly from the repository
2. **Import to your preferred tool**: Use Excel, Google Sheets, or any database management system
3. **For MySQL users**: Import the CSV into a new table using MySQL Workbench or command line

### For MySQL Setup
```bash
# Clone the repository
git clone https://github.com/kuliashvili/georgian-ufc-fighters.git

# Navigate to the project
cd georgian-ufc-fighters

# Import the CSV file into your MySQL database
```

## Regular Updates

This database is actively maintained and regularly updated with the latest information about Georgian UFC fighters, including new signings, fight results, and career developments.

## Current Statistics

- **Total Georgian UFC Fighters**: 6
- **Current UFC Champions**: 2

## Contributing

Contributions are welcome! If you have information about Georgian UFC fighters not included in this database, please:

1. Fork the repository
2. Add the fighter data following the existing schema
3. Submit a pull request with documentation

## About

Created with pride and love for Georgian MMA fighters, fans and data enthusiasts. This project showcases the incredible rise of Georgian fighters in the world's premier MMA organization.

**Made with ❤️ in Georgia**
