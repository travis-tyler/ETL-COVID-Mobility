CREATE TABLE countries (
	id SERIAL PRIMARY KEY,
	country VARCHAR(50) NOT NULL,
	population INT NOT NULL
);

CREATE TABLE apple_google_mobility (
	id SERIAL PRIMARY KEY,
	country VARCHAR(50) NOT NULL,
	dates DATE NOT NULL,
	apple_mobility_percent FLOAT NOT NULL,
	google_mobility_percent FLOAT NOT NULL
);

CREATE TABLE infections (
	id SERIAL PRIMARY KEY,
	country VARCHAR(50) NOT NULL,
	dates DATE NOT NULL,
	new_cases INT NOT NULL,
	new_deaths INT NOT NULL,
	total_cases INT NOT NULL,
	total_deaths INT NOT NULL
);

-- CREATE TABLE apple_mobility (
-- 	id SERIAL PRIMARY KEY,
-- 	country VARCHAR(50) NOT NULL,
-- 	dates DATE NOT NULL,
-- 	country_id INT,
-- 	mobility_percent_from_base FLOAT NOT NULL
-- );

-- CREATE TABLE google_mobility (
-- 	id SERIAL PRIMARY KEY,
-- 	country VARCHAR(50) NOT NULL,
-- 	dates DATE NOT NULL,
-- 	mobility_percent_from_base FLOAT NOT NULL
-- );

ALTER TABLE apple_google_mobility 
	ADD CONSTRAINT country_id FOREIGN KEY (country_id) REFERENCES countries(id) MATCH FULL;



DROP TABLE apple_google_mobility;
DROP TABLE countries;
DROP TABLE infections;
-- DROP TABLE apple_mobility;
-- DROP TABLE google_mobility;


