/* Basic SQL Select Statements */

/* Display a list of all data contained in the BOOKS table.  */
SELECT * FROM BOOKS;

/* List the title only of all books available in inventory, using the BOOKS table. */
SELECT TITLE FROM BOOKS;

/* List the title and publication date for each book in the BOOKS table. Use the column heading “Publication Date” for the Pubdate field. */
SELECT TITLE, PUBDATE AS "PUBLICATION DATE" FROM BOOKS;

/* List the customer number for each customer in the CUSTOMERS table, along with the city and state in which the customer lives. */
SELECT CUSTOMER#, CITY, STATE FROM CUSTOMERS;

/* Create a list containing the publisher’s name, the person usually contacted, and the publisher’s telephone number. Rename the contact column “Contact Person” in the displayed results. (Hint: Use the PUBLISHER table.) */
SELECT NAME, CONTACT AS "CONTACT PERSON", PHONE FROM PUBLISHER;

/* Determine which categories are represented in the current book inventory. List each category only once. */
SELECT DISTINCT CATEGORY FROM BOOKS;

/* List the customer number from the ORDERS table for each customer who has placed an order with the bookstore. List each customer number only once. */
SELECT DISTINCT CUSTOMER# FROM ORDERS;

/* Create a list of each book title stored in the BOOKS table and the category in which each book belongs. Reverse the sequence of the columns so that the category of each book is listed first. */
SELECT CATEGORY, TITLE FROM BOOKS; 

/* Create a list of authors that displays the last name followed by the first name for each author. The last names and first names should be separated by a comma and a blank space.  */
SELECT LNAME || ', ' || FNAME FROM AUTHOR;

/* List all information for each order item. Include an item total, which can be calculated by multiplying the Quantity and Paideach columns. Use a column alias for the calculated value to show the heading “Item Total” in the output. */
SELECT ORDER#, ITEM#, ISBN, QUANTITY, PAIDEACH, QUANTITY * PAIDEACH AS "ITEM TOTAL" FROM ORDERITEMS;
