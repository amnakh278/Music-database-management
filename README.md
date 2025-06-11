# Music-database-management

This project is a structured SQL-based music database system designed as part of a DBMS academic Project. It simulates a simplified music streaming platform using relational database concepts, showcasing schema design, data insertion, querying, transactions, and referential integrity.

Key Features

Database Creation:

Creates and uses a database named music.

Schema Design:

consumer: Stores user details.

artist: Stores artist information.

album: Stores music album details.

track: Stores individual track metadata.

played: Logs playback activity combining consumers, tracks, albums, and artists.

Data Insertion:

Populates all tables with sample data entries, simulating real-world records.

SQL Operations:

SELECT queries for retrieving full table data and specific user or track data.

ORDER BY clause usage for sorting track data.

HAVING clause for conditional filtering on joined data.

JOIN operations using implicit joins to retrieve relational data across multiple tables.

Pattern matching with LIKE for track search functionality.

Transaction Control:

Demonstrates usage of START TRANSACTION, COMMIT, and ROLLBACK.

Inserts, updates, and deletes within transactions to reflect real-world data operations.

Referential Integrity:

Establishes foreign key constraints linking played table to consumer, track, album, and artist.

Additional Features:

Sample DESCRIBE commands for table inspection.

Multiple insertions into the played table to simulate multiple plays of a track.

Usage

To run this project:

Open any MySQL-compatible database tool (e.g., MySQL Workbench, phpMyAdmin).

Execute the dbms assignment 2.sql script step-by-step or all at once to initialize and populate the database.

Explore the results using the included queries.

Learning Objectives

Practice relational schema design and normalization.

Implement SQL DDL and DML commands.

Understand the use of transactions in database operations.

Apply constraints and relationships across tables.
