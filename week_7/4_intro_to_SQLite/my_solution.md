# U3.W7: Intro to SQLite

## Release 0: Create a dummy database

Alexiss-MacBook-Pro:~ alexisernst$ sqlite3 dummy.db
-- Loading resources from /Users/alexisernst/.sqliterc

SQLite version 3.7.13 2012-07-17 17:46:21
Enter ".help" for instructions
Enter SQL statements terminated with a ";"
sqlite> CREATE TABLE users (
   ...>   id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...>   first_name VARCHAR(64) NOT NULL,
   ...>   last_name  VARCHAR(64) NOT NULL,
   ...>   email VARCHAR(128) UNIQUE NOT NULL,
   ...>   created_at DATETIME NOT NULL,
   ...>   updated_at DATETIME NOT NULL
   ...> );
sqlite> 

<!-- paste your terminal output here -->

## Release 1: Insert Data 

sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Kimmey', 'Lin', 'kimmy@devbootcamp.com', DATETIME('now'), DATETIME('now'));
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at         
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-05-27 06:13:56  2014-05-27 06:13:56
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at         
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-05-27 06:13:56  2014-05-27 06:13:56
2           Alexis      Ernst       ldernst@umich.edu      2014-05-27 06:19:36  2014-05-27 06:19:36
sqlite> 


<!-- paste your terminal output here -->

## Release 2: Multi-line commands
I did get an error that says: Error: column email is not unique

sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at         
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-05-27 06:13:56  2014-05-27 06:13:56
2           Alexis      Ernst       ldernst@umich.edu      2014-05-27 06:19:36  2014-05-27 06:19:36
sqlite> 


<!-- paste your terminal output here -->

## Release 3: Add a column

-------------------  ----------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-05-27 06:13:56  2014-05-27 06:13:56            
2           Alexis      Ernst       ldernst@umich.edu      2014-05-27 06:19:36  2014-05-27 06:19:36            
sqlite> ALTER TABLE users ADD COLUMN nickname TEXT;
Error: duplicate column name: nickname
sqlite> INSERT INTO users(nickname)
   ...> VALUES ('Kimchee', 'Lexie')
   ...> 
   ...> SELECT * FROM users;
Error: near "SELECT": syntax error
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at           nickname  
----------  ----------  ----------  ---------------------  -------------------  -------------------  ----------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-05-27 06:13:56  2014-05-27 06:13:56            
2           Alexis      Ernst       ldernst@umich.edu      2014-05-27 06:19:36  2014-05-27 06:19:36            
sqlite> UPDATE users SET nickname='Kimchee' WHERE last_name='Lin';
sqlite> UPDATE users SET nickname='Lexie' WHERE last_name='Ernst';
sqlite> SELECT nickname FROM users;
nickname  
----------
Kimchee   
Lexie     
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at           nickname  
----------  ----------  ----------  ---------------------  -------------------  -------------------  ----------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-05-27 06:13:56  2014-05-27 06:13:56  Kimchee   
2           Alexis      Ernst       ldernst@umich.edu      2014-05-27 06:19:36  2014-05-27 06:19:36  Lexie   

<!-- paste your terminal output here -->

## Release 4: Change a value

sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at           nickname  
----------  ----------  ----------  ---------------------  -------------------  -------------------  ----------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-05-27 06:13:56  2014-05-27 06:13:56  Kimchee   
2           Alexis      Ernst       ldernst@umich.edu      2014-05-27 06:19:36  2014-05-27 06:19:36  Lexie     
sqlite> UPDATE users SET first_name='Kimmy' WHERE last_name='Lin';
sqlite> UPDATE users SET nickname='Ninja Coder' WHERE last_name='Lin';
sqlite> UPDATE users SET updated_at=('now') WHERE last_name='Lin';
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at  nickname   
----------  ----------  ----------  ---------------------  -------------------  ----------  -----------
1           Kimmy       Lin         kimmy@devbootcamp.com  2014-05-27 06:13:56  now         Ninja Coder
2           Alexis      Ernst       ldernst@umich.edu      2014-05-27 06:19:36  2014-05-27  Lexie      
sqlite> 


<!-- paste your terminal output here -->

## Release 5: Reflect

This exercise was a pretty fun one! It was easy at first as all I had to do was copy and paste terminal input. However, once I got to Release 3 it became more challenging. The tutorial was very helpful to me while completing this challenge. I kept trying to add the nicknames column, and couldn't figure out why it wasn't working. Then, after a good 45 minutes, I realized the column was there since my first try, it was just in a weird format and when looking at the table I didn't notice it! Other than that, this challenge went very smoothly and it was a great introduction to SQLite.  
<!-- Add your reflection here -->