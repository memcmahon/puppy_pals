require 'sqlite3'

database = SQLite3::Database.new("db/puppy_pals_development.db")
database.execute("CREATE TABLE puppies (id INTEGER PRIMARY KEY AUTOINCREMENT,
                                        name VARCHAR(64),
                                        breed VARCHAR(64),
                                        image VARCHAR(64)
                                       );"
                )
