/* Create a new table containing the category code and description for the categories of books sold by JustLee Books. The table should be called CATEGORY, and the columns should be CatCode and CatDesc. The CatCode column should store a maximum of 2 characters, and the CatDesc column should store a maximum of 10 characters. */
CREATE TABLE CATEGORY (
	CATCODE VARCHAR2(2),
	CATDESC VARCHAR2(10));

/* Create a new table containing these four columns: Emp#, Lastname, Firstname, and Job_class. The table name should be EMPLOYEES. The Job_class column should be able to store character strings up to a maximum length of four, but the column values shouldn’t be padded if the value has less than four characters. The Emp# column contains a numeric ID and should allow a five-digit number. Use column sizes you consider suitable for the Firstname and Lastname columns. */
CREATE TABLE EMPLOYEES(
	EMP# NUMBER(5),
	LASTNAME VARCHAR2(255),
	FIRSTNAME VARCHAR2(255),
	JOB_CLASS VARCHAR2(4));

/* Add two columns to the EMPLOYEES table. One column, named EmpDate, contains the date of employment for each employee, and its default value should be the system date. The second column, named EndDate, contains employees’ date of termination. */
ALTER TABLE EMPLOYEES ADD(
	EMPDATE DATE DEFAULT SYSDATE,
	ENDATE DATE);

/* Modify the Job_class column of the EMPLOYEES table so that it allows storing a maximum width of two characters. */
ALTER TABLE EMPLOYEES MODIFY(
	JOB_CLASS VARCHARS(2));

/* Delete the EndDate column from the EMPLOYEES table. */
ALTER TABLE EMPLOYEES DROP COLUMN ENDDATE;

/* Rename the EMPLOYEES table as JL_EMPS. */
RENAME EMPLOYEES TO JL_EMPS;

/* Create a new table containing these four columns from the existing BOOKS table: ISBN, Cost, Retail, and Category. The name of the ISBN column should be ID, and the other columns should keep their original names. Name the new table BOOK_PRICING. */
CREATE TABLE BOOK_PRICING AS 
	(SELECT ISBN, COST, RETAIL, CATEGORY FROM BOOKS);

/* Mark the Category column of the BOOK_PRICING table as unused. Verify that the column is no longer available. */
ALTER TABLE BOOK_PRICING 
	SET UNUSED COLUMN CATEGORY;

/* Truncate the BOOK_PRICING table, and then verify that the table still exists but no longer contains any data.*/
TRUNCATE TABLE BOOK_PRICING;

SELECT * FROM BOOK_PRICING;

/* Delete the BOOK_PRICING table permanently so that it isn’t moved to the recycle bin. Delete the JL_EMPS table so that it can be restored. Restore the JL_EMPS table and verify that it’s available again. */
DROP TABLE BOOK_PRICING;

DROP TABLE JL_EMPS;

