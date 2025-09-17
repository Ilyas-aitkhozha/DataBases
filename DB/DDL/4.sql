alter table airline_info
alter column airline_id set not null,
alter column airline_code set not null,
alter column airline_name set not null,
alter column airline_country set not null,
alter column created_at set not null,
alter column updated_at set not null,
alter column info set not null;

alter table airport
	alter column airport_id set not null,
	alter column airport_name set not null,
	alter column country set not null,
	alter column state set not null,
	alter column city set not null,
	alter column created_at set not null,
	alter column updated_at set not null;

alter table baggage_check
alter column baggage_check_id set not null,
alter column check_result set not null,
alter column created_at set not null,
alter column updated_at set not null,
alter column booking_id set not null,
alter column passenger_id set not null;

alter table baggage
alter column baggage_id set not null,
alter column weight_in_kg set not null,
alter column created_at set not null,
alter column updated_at set not null,
alter column booking_id set not null;

alter table boarding_pass
	alter column boarding_pass_id set not null,
	alter column booking_id set not null,
	alter column seat set not null,
	alter column boarding_time set not null,
	alter column created_at set not null,
	alter column updated_at set not null;

alter table booking_flight
alter column booking_flight_id set not null,
alter column booking_id set not null,
alter column flight_id set not null,
alter column created_at set not null,
alter column updated_at set not null;

alter table booking
	alter column booking_id set not null,
	alter column flight_id set not null,
	alter column passenger_id set not null,
	alter column booking_platform set not null,
	alter column created_at set not null,
	alter column updated_at set not null,
	alter column status set not null,
	alter column price set not null;

alter table flights
alter column flight_id set not null,
alter column sch_departure_time set not null,
alter column sch_arrival_time set not null,
alter column departing_airport_id set not null,
alter column arriving_airport_id set not null,
alter column departing_gate set not null,
alter column arriving_gate set not null,
alter column airline_id set not null,
alter column act_departure_time set not null,
alter column act_arrival_time set not null,
alter column created_at set not null,
alter column updated_at set not null;

alter table passengers
	alter column passenger_id set not null,
	alter column first_name set not null,
	alter column last_name set not null,
	alter column date_of_birth set not null,
	alter column gender set not null,
	alter column country_of_citizenship set not null,
	alter column country_of_residence set not null,
	alter column passport_number set not null,
	alter column created_at set not null,
	alter column updated_at set not null;

alter table security_check
alter column security_check_id set not null,
alter column check_result set not null,
alter column created_at set not null,
alter column updated_at set not null,
alter column passenger_id set not null;
