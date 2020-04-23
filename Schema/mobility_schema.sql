CREATE TABLE mobility (
	id SERIAL PRIMARY KEY,
	date DATE NOT NULL,
	country_name VARCHAR(50) NOT NULL,
	apple_change FLOAT NOT NULL,
	google_change FLOAT NOT NULL
);

CREATE TABLE infections (
	id SERIAL PRIMARY KEY,
	date DATE NOT NULL,
	county_name VARCHAR(50) NOT NULL,
	total_infections INT NOT NULL,
	total_deaths INT NOT NULL
);

CREATE TABLE population (
	id SERIAL PRIMARY KEY,
	county_name VARCHAR(50) NOT NULL,
	population INT NOT NULL
);

