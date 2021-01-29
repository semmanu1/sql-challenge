-- Making tables
CREATE TABLE "departments" (
	"dept_no" VARCHAR NOT NULL,
	"dept_name" VARCHAR NOT NULL,
	CONSTRAINT "pk_departments"
	PRIMARY KEY ("dept_no")
);

CREATE TABLE "dept_emp" (
	"emp_no" INT NOT NULL,
	"dept_no" VARCHAR NOT NULL
);

CREATE TABLE "dept_manager" (
	"dept_no" VARCHAR NOT NULL,
	"emp_no" INT NOT NULL
);

CREATE TABLE "employees" (
	"emp_no" INT NOT NULL,
 	"emp_title_id" VARCHAR NOT NULL,
	"birth_date" DATE NOT NULL,
	"first_name" VARCHAR NOT NULL,
	"last_name" VARCHAR NOT NULL,
	"sex" VARCHAR NOT NULL,
	"hire_date" DATE NOT NULL,
	CONSTRAINT "pk_employees"
	PRIMARY KEY ("emp_no")
);

CREATE TABLE "salaries" (
	"emp_no" INT NOT NULL,
	"salary" INT NOT NULL
);

CREATE TABLE "titles" (
	"title_id" VARCHAR NOT NULL,
	"title" VARCHAR NOT NULL
);

-- Ran into an issue importing my final table the way we learned in class
-- This is the code I used to import the CSV using \copy
COPY titles(title_id, title)
	FROM 'C:\Users\Public\titles.csv'
	DELIMITER ','
	CSV HEADER;