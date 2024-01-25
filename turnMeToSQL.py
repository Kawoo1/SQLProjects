import os
import sqlite3

# Authored by: Kyle Shanahan
# This program takes a compilation of files and turns them into a SQLite database.
# [1] Things you will need:  -- SQLite -- If you don't have SQLite installed, 
# download it from the official website: https://www.sqlite.org/index.html
# otherwise, you can use an SQL database browser like DB Browser for SQLite
# [2] Execute this in BASH: 
# sqlite3 your_database_name.db < output.sql
# [3] Open the SQLite command-line tool or use a SQLite database browser,
# then execute this command: SELECT * FROM files;


def create_sql_file(file_entries, sql_file_path):
    with open(sql_file_path, 'w') as sql_file:
        # SQLite database setup
        sql_file.write('CREATE TABLE IF NOT EXISTS files (id INTEGER PRIMARY KEY, name TEXT, type TEXT);\n')

        # Insert data into the SQLite database
        for entry in file_entries:
            name, file_type = os.path.splitext(entry)
            sql_file.write(f'INSERT INTO files (name, type) VALUES ("{name}", "{file_type}");\n')

if __name__ == "__main__":
    
    # ----------------------------------------------------------------------------
    # --- Replace '/path/to/your/folder' with the ACTUAL path to your folder -----
    #                   vvvvvv
    folder_path = '/path/to/your/folder'
    # ----------------------------------------------------------------------------
    sql_file_path = 'output.sql'

    # Get the list of files in the folder
    file_entries = sorted(os.listdir(folder_path))

    # Generate the SQL file
    create_sql_file(file_entries, sql_file_path)

    print(f'Successfully generated SQL file: {sql_file_path}')
