CREATE TABLE readers(
	id SERIAL NOT NULL PRIMARY KEY,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	book_id INT,
	CONSTRAINT fk_readers_books FOREIGN KEY (book_id) REFERENCES books(id)
)

INSERT INTO readers(first_name, last_name, book_id) VALUES
('Pencho', 'Bookadzhiyata', 22),
('Moro', 'Knigadzhiyata', 23),
('Pero', 'Pisalkata', 31),
('Lyubo', 'Romana', 34),
('Vancho', 'Knijkata', 13)

SELECT 
	r.first_name,
	r.last_name,
	CONCAT(b.title, ' ', extract(year from b.year_of_release)),
	CONCAT(a.first_name, ' ', a.last_name) AS author
FROM readers AS r JOIN books AS b ON r.book_id = b.id
JOIN authors AS a ON b.author_id = a.id


















