CREATE VIEW "weatherView" AS
SELECT c."name", cn."countryCode", w."description", w."temp", w."feelsLike", w."humidity", w."pressure",
       w."sunrise", w."sunset", w."updatedOn"
FROM "city" c
INNER JOIN "country" cn
ON c."countryId" = cn."countryId"
INNER JOIN "weather" w
ON c. "cityId" = w."cityId";



-- Select all columns from the "WeatherView" view
SELECT * FROM "weatherView";