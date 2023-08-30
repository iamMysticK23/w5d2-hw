--INSERTING VALUES INTO TABLES

--Customer 1
INSERT INTO customer (
	
	customer_id,
	first_name,
	last_name,
	phone_number,
	email
)
VALUES(
	101,
	'Kenai',
	'Epps',
	'770-456-7890',
	'k.epps23@gmail.com'
);

INSERT INTO customer (
	
	customer_id,
	first_name,
	last_name,
	phone_number,
	email
)
VALUES(
	102,
	'Mike',
	'Jones',
	'281-330-8004',
	'mjones3@gmail.com'
);

-- Customer 2
INSERT INTO customer (
	
	customer_id,
	first_name,
	last_name,
	phone_number,
	email
)
VALUES(
	102,
	'Mike',
	'Jones',
	'281-330-8004',
	'mjones3@gmail.com'
);

-- Customer 3

INSERT INTO customer (
	
	customer_id,
	first_name,
	last_name,
	phone_number,
	email
)
VALUES(
	103,
	'Janet',
	'Thomas',
	'510-567-7890',
	'jthomas12@yahoo.com'
);


SELECT *
FROM customer;

-- Inserting Employees
INSERT INTO employee(
	employee_id,
	first_name,
	last_name,
	address,
	phone,
	email,
	hire_date,
	position
)
VALUES(
	01,
	'Kim',
	'Parker',
	'123 Anywhere Road, Santa Monica, CA 96703',
	'909-453-0983',
	'kparker12@yahoo.com',
	'2023-03-20',
	'General Manager'
);

INSERT INTO employee(
	employee_id,
	first_name,
	last_name,
	address,
	phone,
	email,
	hire_date,
	position
)
VALUES(
	02,
	'Josh',
	'Lewis',
	'1274 Las Enchantas Blvd, Riverside, CA 92504',
	'310-779-4890',
	'joshLewis98@gmail.com',
	'2023-08-14',
	'Cashier'
);

SELECT *
FROM employee;

-- Inserting Concessions
INSERT INTO concessions (
	concession_id,
	name,
	price,
	customer_id,
	employee_id
)
VALUES(
	0099,
	'Large Popcorn',
	6.99,
	'101',
	'02'
);

INSERT INTO concessions (
	concession_id,
	name,
	price,
	customer_id,
	employee_id
)
VALUES(
	0098,
	'Small Popcorn',
	4.99,
	'102',
	'02'
);

INSERT INTO concessions (
	concession_id,
	name,
	price,
	customer_id,
	employee_id
)
VALUES(
	0089,
	'Large Soda',
	5.99,
	'102',
	'01'
);

INSERT INTO concessions (
	concession_id,
	name,
	price,
	customer_id,
	employee_id
)
VALUES(
	0079,
	'Skittles',
	3.99,
	'101',
	'02'
);

SELECT * 
FROM concessions;

-- Inserting Movies
INSERT INTO movie(
	movie_id,
	title,
	release_date,
	genre,
	duration_minutes
)
VALUES (
	1110,
	'Barbie',
	'2023-07-21',
	'Comedy',
	114
);

INSERT INTO movie(
	movie_id,
	title,
	release_date,
	genre,
	duration_minutes
)
VALUES (
	1111,
	'Gran Turismo',
	'2023-08-25',
	'Action/Adventure',
	135
);

INSERT INTO movie(
	movie_id,
	title,
	release_date,
	genre,
	duration_minutes
)
VALUES (
	1113,
	'Blue Beetle',
	'2023-08-18',
	'Action/Adventure',
	135
);

INSERT INTO movie(
	movie_id,
	title,
	release_date,
	genre,
	duration_minutes
)
VALUES (
	1112,
	'Haunted Mansion',
	'2023-07-28',
	'Comedy/Drama',
	122
);

SELECT * 
FROM movie;

-- Inserting Movie Showroom
INSERT INTO movie_showroom(
	showroom_id,
	showroom_number,
	capacity
)
VALUES(
	22201,
	1,
	150
);

INSERT INTO movie_showroom(
	showroom_id,
	showroom_number,
	capacity
)
VALUES(
	22202,
	2,
	150
);

INSERT INTO movie_showroom(
	showroom_id,
	showroom_number,
	capacity
)
VALUES(
	22203,
	3,
	100
);

INSERT INTO movie_showroom(
	showroom_id,
	showroom_number,
	capacity
)
VALUES(
	22204,
	4,
	120
);

SELECT *
FROM movie_showroom;

-- Inserting Movie Screening
INSERT INTO movie_screening(
	screening_id,
	movie_id,
	showroom_id,
	capacity
)
VALUES(
	1201,
	1110,
	22201,
	150
);

INSERT INTO movie_screening(
	screening_id,
	movie_id,
	showroom_id,
	capacity
)
VALUES(
	1202,
	1111,
	22201,
	150
);

INSERT INTO movie_screening(
	screening_id,
	movie_id,
	showroom_id,
	capacity
)
VALUES(
	1203,
	1112,
	22203,
	100
);

SELECT *
FROM movie_screening;

-- Inserting payment
INSERT INTO payment(
	payment_id,
	customer_id,
	payment_time,
	amount,
	payment_method
)
VALUES (
	000001,
	101,
	CURRENT_TIMESTAMP,
	12.99,
	'Credit Card'	
);

INSERT INTO payment(
	payment_id,
	customer_id,
	payment_time,
	amount,
	payment_method
)
VALUES (
	000002,
	102,
	CURRENT_TIMESTAMP,
	25.79,
	'Cash'	
);

SELECT * 
FROM payment;

-- Inserting Ticket
INSERT INTO ticket (
	ticket_id,
	customer_id,
	movie_id,
	screening_id,
	seat_number,
	time_purchased,
	ticket_type

)
VALUES(
	0000054320,
	101,
	1110,
	1201,
	23,
	CURRENT_TIMESTAMP,
	'Student'

);

INSERT INTO ticket (
	ticket_id,
	customer_id,
	movie_id,
	screening_id,
	seat_number,
	time_purchased,
	ticket_type

)
VALUES(
	0000054321,
	102,
	1113,
	1203,
	95,
	CURRENT_TIMESTAMP,
	'Regular'
);
SELECT *
FROM ticket;

