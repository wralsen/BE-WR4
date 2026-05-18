# BE-WR4 
SQL files for work requirement 4.

## How to run locally (macOS)
Copy the SQL files to a local folder. Open Terminal in this folder and run the script below.
### Sqlite script to create and run (macOS)
sqlite3
.open books.db
.read create-tables.sql
.mode column
.headers on
.read queries.sql

## Comments
The table data reflects the messy reality where some books have 0, some 1 and some several authors, and where some data may be missing.