firstStep : CREATE TABLE AUTHORS (id SERIAL PRIMARY KEY, name VARCHAR(255));
    It will create a second table in the lab14_normal database named authors.

secondStep : INSERT INTO authors(name) SELECT DISTINCT author FROM books;
    It will use a simple subquery to retrieve unique author values from the books table and insert each one into the authors table in the name column.
    
    Then to confirm the success of this command by typing  <SELECT COUNT(*) FROM authors;>

thirdStep: ALTER TABLE books ADD COLUMN author_id INT;
    This query will add a column to the books table named author_id.

fourthStep: UPDATE books SET author_id=author.id FROM (SELECT * FROM authors) AS author WHERE books.author = author.name;
    This query will prepare a connection between the two tables. It works by running a subquery for every row in the books table.
    To confirm the success of this command by typing <SELECT author_id FROM books;>

fifthStep: ALTER TABLE books DROP COLUMN author;
    This query will modify the books table by removing the column named author

sixthStep: ALTER TABLE books ADD CONSTRAINT fk_authors FOREIGN KEY (author_id) REFERENCES authors(id);
    This query will modify the data type of the author_id