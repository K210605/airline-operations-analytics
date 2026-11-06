CREATE TABLE airlines (
    iata_code VARCHAR(3) PRIMARY KEY,
    airline   VARCHAR(100)
);

CREATE TABLE airports (
    iata_code VARCHAR(10) PRIMARY KEY,
    airport   VARCHAR(150),
    city      VARCHAR(100),
    state     VARCHAR(10),
    country   VARCHAR(10),
    latitude  REAL,
    longitude REAL
);

CREATE TABLE flights (
    flight_id           SERIAL PRIMARY KEY,
    flightdate          DATE,
    month               SMALLINT,
    day_of_week         SMALLINT,
    scheduledhour       SMALLINT,
    airline             VARCHAR(3),
    flight_number       INT,
    origin_airport      VARCHAR(10),
    destination_airport VARCHAR(10),
    distance            INT,
    departure_delay     REAL,
    arrival_delay       REAL,
    cancelled           SMALLINT,
    diverted            SMALLINT,
    cancellationreason  VARCHAR(30),
    isdelayed           SMALLINT,
    delaybucket         VARCHAR(30),
    air_system_delay    REAL,
    security_delay      REAL,
    airline_delay       REAL,
    late_aircraft_delay REAL,
    weather_delay       REAL
);