create table airline_info(
airline_id int,
airline_code varchar(30),
airline_name varchar(50),
airline_country varchar(50),
created_at timestamp,
updated_at timestamp,
info varchar(50)
);

CREATE TABLE Airport (
    airport_id INT,
    airport_name VARCHAR(50),
    country VARCHAR(50),
    state VARCHAR(50),
    city VARCHAR(50),
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);

create table baggage_check (
baggage_check_id int,
check_result varchar(50),
created_at timestamp,
updated_at timestamp,
booking_id int,
passenger_id int
);

CREATE TABLE Baggage(
baggage_id INT,
weight_in_kg DECIMAL(4,2),
created_at TIMESTAMP,
updated_at TIMESTAMP,
booking_id INT
);

create table boarding_pass(
    boarding_pass_id int,
    booking_id int,
    seat varchar(50),
    boarding_time timestamp,
    created_at timestamp,
    updated_at timestamp
);

CREATE TABLE booking_flight(
booking_flight_id int,
booking_id int,
flight_id int,
created_at timestamp,
updated_at timestamp
);

CREATE TABLE booking (
booking_id int,
flight_id int,
passenger_id int,
booking_platform varchar(50),
created_at timestamp,
updated_at timestamp,
status varchar(50),
price decimal(7,2)
);

create table flights(
    flight_id int,
    sch_departure_time timestamp,
    sch_arrival_time timestamp,
    departing_airport_id int,
    arriving_airport_id int,
    departing_gate varchar(50),
    arriving_gate varchar(50),
    airline_id int,
    act_departure_time timestamp,
    act_arrival_time timestamp,
    created_at timestamp,
    updated_at timestamp
);

CREATE TABLE passengers(
passenger_id int,
first_name varchar(50),
last_name varchar(50),
date_of_birth date,
gender varchar(50),
country_of_citizenship varchar(50),
country_of_residence varchar(50),
passport_number varchar(20),
created_at timestamp,
updated_at timestamp
);

create table security_check(
security_check_id int,
check_result varchar(20),
created_at timestamp,
updated_at timestamp,
passenger_id int
);


ALTER TABLE airline_info     ADD CONSTRAINT pk_airline_info     PRIMARY KEY (airline_id);
ALTER TABLE airport          ADD CONSTRAINT pk_airport          PRIMARY KEY (airport_id);
ALTER TABLE baggage_check    ADD CONSTRAINT pk_baggage_check    PRIMARY KEY (baggage_check_id);
ALTER TABLE baggage          ADD CONSTRAINT pk_baggage          PRIMARY KEY (baggage_id);
ALTER TABLE boarding_pass    ADD CONSTRAINT pk_boarding_pass    PRIMARY KEY (boarding_pass_id);
ALTER TABLE booking_flight   ADD CONSTRAINT pk_booking_flight   PRIMARY KEY (booking_flight_id);
ALTER TABLE booking          ADD CONSTRAINT pk_booking          PRIMARY KEY (booking_id);
ALTER TABLE flights          ADD CONSTRAINT pk_flights          PRIMARY KEY (flight_id);
ALTER TABLE passengers       ADD CONSTRAINT pk_passengers       PRIMARY KEY (passenger_id);
ALTER TABLE security_check   ADD CONSTRAINT pk_security_check   PRIMARY KEY (security_check_id);


