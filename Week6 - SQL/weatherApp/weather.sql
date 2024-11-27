--create the table
CREATE TABLE "weather" (
"weatherId" INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY,
"cityId" INTEGER NOT NULL,
"userId" INTEGER NOT NULL,
"weatherStatusId" INTEGER NOT NULL,
"description" VARCHAR (1000) NOT NULL,
"icon" VARCHAR (50) NOT NULL,
"sunrise" TIMESTAMP WITHOUT TIME ZONE NOT NULL,
"sunset" TIMESTAMP WITHOUT TIME ZONE NOT NULL,
"temp" NUMERIC NOT NULL,
"feelsLike" NUMERIC NOT NULL,
"tempMin" NUMERIC NOT NULL,
"tempMax" NUMERIC NOT NULL,
"pressure" NUMERIC NOT NULL,
"humidity" NUMERIC NOT NULL,
"visibility" NUMERIC NOT NULL,
"windSpeed" NUMERIC NOT NULL,
"windDirection" NUMERIC NOT NULL,
"cloudsAll" NUMERIC NOT NULL,
"updatedOn" TIMESTAMP WITHOUT TIME ZONE NOT NULL,
CONSTRAINT "weatherPkey" PRIMARY KEY ("weatherId"),
CONSTRAINT "weatherCityIdFKey" FOREIGN KEY ("cityId")
    REFERENCES "city" ("cityId"),
CONSTRAINT "weatherUserIdFKey" FOREIGN KEY ("userId")
    REFERENCES "user" ("userId")
);

--insert a new weather record
INSERT INTO "weather" ("cityId", "userId", "weatherStatusId", "description", "icon", "sunrise",
						"sunset", "temp", "feelsLike", "tempMin", "tempMax", "pressure",
						"humidity", "visibility", "windSpeed", "windDirection", "cloudsAll", "updatedOn")
	VALUES (1, 2, 3, 'Cloudy with a chance of rain', '01n', '2023-02-22 06:30:00', '2023-02-22 18:30:00',
			12.5, 10.5, 9.5, 15.5, 1015, 75, 8000, 5.5, 180, 80, '2023-02-22 12:30:00');

--select weather based on cityId
SELECT * FROM "weather" WHERE "cityId" = 1;


--Update the weather record with "weatherId" = 1 and set the "temp" value to 15.0
UPDATE "weather"
SET "temp" = 15.0 WHERE "weatherId" = 1;

--insert another weather record
INSERT INTO "weather" ("cityId", "userId", "weatherStatusId", "description", "icon", "sunrise",
						"sunset", "temp", "feelsLike", "tempMin", "tempMax", "pressure",
						"humidity", "visibility", "windSpeed", "windDirection", "cloudsAll", "updatedOn")
	VALUES (2, 2, 200, 'scattered clouds', '03d', '2023-02-23 06:39:53', '2023-02-23 17:50:39',
			19.2, 18.3, 18.5, 20.8, 1010.0, 74.0, 10000, 3.0, 170.0, 40.0, '2023-02-23 13:45:00');

--select all weather records
SELECT * FROM "weather";


