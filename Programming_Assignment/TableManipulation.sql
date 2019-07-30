/* Add a new row in the ORDERS table with the following data: Order# = 1021, 
Customer# = 1009, and Order date = July 20, 2017. */
INSERT INTO ORDERS (ORDER#, CUSTOMER#, ORDERDATE)
	VALUES (1021, 1009, '20-07-17');

/* Modify the zip code on order 1017 to 33222. */
UPDATE ORDERS
	SET SHIPZIP = 33222
	WHERE ORDER# = 1017;

/* Save the changes permanently to the database. */
COMMIT;

/* Add a new row in the ORDERS table with the following data: Order# = 1022, Customer# = 2000, 
and Order date = August 6, 2009. Describe the error raised and what caused the error. */


/* Add a new row in the ORDERS table with the following data: Order# = 1023 and Customer# = 1009. Describe the error raised and what caused the error. */


/* Create a script using substitution variables that allows a user to set a new cost amount 
for a book based on the ISBN. */


/* Execute the script and set the following values: isbn = 1059831198 and cost = $20.00. */


/* Currently, the contents of the Category column in the BOOKS table are the actual name 
for each category. This structure presents a problem if one user enters COMPUTER for the 
Computer category and another user enters COMPUTERS. To avoid this and other problems that 
might occur, the database designers have decided to create a CATEGORY table containing a code 
and description for each category. The structure for the CATEGORY table should be as follows: */
