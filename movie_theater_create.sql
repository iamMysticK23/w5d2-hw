--CREATE TABLES HERE
--ORGANIZATION: tables with the least amount of foreign keys will go first

CREATE TABLE Customer (
  customer_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  phone_number VARCHAR(15),
  email VARCHAR(100)
);

CREATE TABLE Movie (
  movie_id SERIAL PRIMARY KEY,
  title VARCHAR(50),
  release_date DATE,
  genre VARCHAR(50),
  duration_minutes INTEGER
);

CREATE TABLE Employee (
  employee_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  address VARCHAR(150),
  phone VARCHAR(15),
  email VARCHAR(100),
  hire_date DATE,
  position VARCHAR(50)
);

CREATE TABLE Movie_Showroom (
  showroom_id SERIAL PRIMARY KEY,
  showroom_number INTEGER,
  capacity INTEGER
);

CREATE TABLE Payment (
  payment_id SERIAL PRIMARY KEY,
  customer_id INTEGER,
  payment_time TIMESTAMP,
  amount NUMERIC(5,2),
  payment_method VARCHAR(50),
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

CREATE TABLE Movie_Screening (
  screening_id SERIAL PRIMARY KEY,
  movie_id INTEGER,
  showroom_id INTEGER,
  capacity INTEGER,
  FOREIGN KEY (movie_id) REFERENCES Movie(movie_id),
  FOREIGN KEY (showroom_id) REFERENCES Movie_Showroom(showroom_id)
);


CREATE TABLE Concessions (
  concession_id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  price NUMERIC(5,2),
  customer_id INTEGER,
  employee_id INTEGER,
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
  FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

CREATE TABLE Ticket (
  ticket_id SERIAL PRIMARY KEY,
  customer_id INTEGER,
  movie_id INTEGER,
  screening_id INTEGER,
  seat_number INTEGER,
  time_purchased TIMESTAMP,
  ticket_type VARCHAR(50),
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
  FOREIGN KEY (movie_id) REFERENCES Movie(movie_id),
  FOREIGN KEY (screening_id) REFERENCES Movie_Screening(screening_id)
);
