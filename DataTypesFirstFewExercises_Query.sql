ALTER TABLE minions
RENAME TO minions_info;

ALTER TABLE minions_info
ADD COLUMN code CHAR(4),
ADD COLUMN task TEXT,
ADD COLUMN salary DECIMAL(8,3);

ALTER TABLE minions_info
RENAME salary TO banana;

ALTER TABLE minions_info
ADD COLUMN email VARCHAR(20),
ADD COLUMN equipped BOOLEAN NOT NULL;

CREATE TYPE type_mood
AS ENUM (
	'happy', 
	'relaxed', 
	'stressed', 
	'sad');

ALTER TABLE minions_info
ADD COLUMN mood type_mood;

ALTER TABLE minions_info
ALTER COLUMN age SET DEFAULT '0',
ALTER COLUMN "name" SET DEFAULT '',
ALTER COLUMN code SET DEFAULT '';

ALTER TABLE minions_info
ADD CONSTRAINT unique_containt UNIQUE ("id", email),
ADD CONSTRAINT banana_check CHECK(banana > 0);

ALTER TABLE minions_info
ALTER COLUMN task SET DATA TYPE VARCHAR(150);

ALTER TABLE minions_info
ALTER COLUMN equipped DROP NOT NULL;

ALTER TABLE minions_info
DROP COLUMN age;




