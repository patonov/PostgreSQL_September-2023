CREATE TABLE oligofrens(
	id SERIAL PRIMARY KEY,
	names VARCHAR(80),
	isreader BOOLEAN
)

INSERT INTO oligofrens VALUES
(1, 'Kuncho Muncho', false)

delete from oligofrens;

INSERT INTO oligofrens(names, isreader) VALUES
('Pesho Tralalata', false),
('Mito Bangoto', true),
('Petko Zubara', true);

truncate table oligofrens;