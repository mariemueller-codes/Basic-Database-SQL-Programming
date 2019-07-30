/* Modify the following SQL command so that the Rep_ID column is the PRIMARY KEY 
for the table and the default value of ‘Y’ is assigned to the Comm column. 
(The Comm column indicates whether the sales representative earns commission.)
		CREATE TABLE store_reps
		(rep_ID NUMBER(5),
		last VARCHAR2(15),
		first VARCHAR2(10),
		comm CHAR(1)); */
		
CREATE TABLE STORE_REPS(
		REP_ID NUMBER(5),
		LASTNAME VARCHAR2(15),
		FIRSTNAME VARCHAR2(10),
		COMM CHAR(1) DEFAULT 'Y',
		CONSTRAINT rep_id_pk PRIMARY KEY(REP_ID);


/* Change the STORE_REPS table so that NULL values can’t be entered in the name columns 
(First and Last). */
ALTER TABLE STORE_REPS 
	MODIFY (LASTNAME CONSTRAINT STORE_REPS_LAST NOT NULL,
	FIRSTNAME CONSTRAINT STORE_REPS_FIRST NOT NULL);

/* Change the STORE_REPS table so that only a Y or N can be entered in the Comm column.*/
ALTER TABLE STORE_REPS
	ADD CONSTRAINT STORE_REPS_COMM_CK CHECK (COMM IN ('Y', 'N'));

/* Add a column named Base_salary with a datatype of NUMBER(7,2) to the STORE_REPS table. 
Ensure that the amount entered is above zero.*/
ALTER TABLE STORE_REPS 
	ADD BASE_SALARY NUMBER (7,2),
	ADD (CONSTRAINT BASE_SALARY_CK CHECK (BASE_SALARY > 0));

/* Create a table named BOOK_STORES to include the columns listed in the following chart.*/
CREATE TABLE BOOK_STORES(
	STORE_ID NUMBER(8),
	NAME VARCHAR2(30) NOT NULL,
	CONTACT VARCHAR2(30),
	REP_ID VARCHAR2(5)
	CONSTRAINT BOOK_STORES_PK PRIMARY KEY(STORE_ID),
	CONSTRAINT BS_NAME_UNQ UNIQUE(NAME));

/* Add a constraint to make sure the Rep_ID value entered in the BOOK_STORES table is a 
valid value contained in the STORE_REPS table. The Rep_ID columns of both tables were 
initially created as different datatypes. Does this cause an error when adding the constraint? 
Make table modifications as needed so that you can add the required constraint*/
ALTER TABLE BOOK_STORES 
	MODIFY(REP_ID NUMBER(5))
	ADD CONSTRAINT BS_RED_ID_FK
	FOREIGN KEY(REP_ID) REFERENCE STORE_REPS(REP_ID);

/* Change the constraint created in Assignment #6 so that associated rows of the BOOK_STORES 
table are deleted automatically if a row in the STORE_REPS table is deleted.*/


/* Create two tables based on the E-R model shown below and the business rules in the following 
list for a work order tracking database. Include all the constraints in the CREATE TABLE statements. You should have only two CREATE TABLE statements and no ALTER TABLE statements. Name all constraints except NOT NULLs.*/
