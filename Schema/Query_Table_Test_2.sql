SELECT distinct country
FROM apple_mobility;

SELECT *
FROM apple_mobility;

SELECT * 
FROM google_mobility;

SELECT *
FROM infections;

SELECT *
FROM countries;

SELECT distinct c.country, a.country
FROM countries as c
RIGHT JOIN apple_mobility as a
ON c.country = a.country
ORDER BY c.country asc;

SELECT distinct c.country, g.country
FROM countries as c
RIGHT JOIN google_mobility as g
ON c.country = g.country
ORDER BY c.country asc;

SELECT distinct c.country, i.country
FROM countries as c
RIGHT JOIN infections as i
ON c.country = i.country
ORDER BY c.country asc;

-- in Apple drop "Czech Republic", "UK", "Republic of Korea"
-- in Google drop "Cape Verde", "Czechia", "Myanmar (Burma)", "The Bahamas"
-- in Infections drop "Cote d'Ivoire", "Czech Republic", "Democratic Republic of Congo", "Guernsey", "International", "Macedonia", "Saint Barthlemy", "Saint Martin (French part)", "Vatican", "Worldwide"