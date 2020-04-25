CREATE TABLE countries (
	id SERIAL PRIMARY KEY,
	country VARCHAR(50) NOT NULL,
	population INT NOT NULL
);

CREATE TABLE apple_mobility (
	id SERIAL PRIMARY KEY,
	country VARCHAR(50) NOT NULL,
	dates DATE NOT NULL,
	mobility_percent_from_base FLOAT NOT NULL
);

CREATE TABLE google_mobility (
	id SERIAL PRIMARY KEY,
	country VARCHAR(50) NOT NULL,
	dates DATE NOT NULL,
	mobility_percent_from_base FLOAT NOT NULL
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

ALTER TABLE apple_mobility 
	ADD CONSTRAINT fk_country_id FOREIGN KEY (id) REFERENCES countries(id);

DROP TABLE apple_mobility;
DROP TABLE google_mobility;
DROP TABLE countries;
DROP TABLE infections;


