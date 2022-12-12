# COMP-3005-Final-Project-
Team Member: Yuncong Zhang(101111553)  Hao Wu(101088618)

* Diagrams for section 2.1 - 2.4 are saved in 'Diagrams' folder.
* SQL files are saved in 'SQL' folder, which includes DDL(create tables), DML(insert values), and DQL(Retrieve data samples).
* There are two main interfaces users.py and owners.py in this directory. 


* Database Setup
In this project, we are going to use python command-line interfaces to interact with the “Bookstore” database, 
which is created with PostgreSQL. 

In order to have all functions working properly, users need to have psycopg installed.
To install psycopg, please make sure you have python installed, and then type in the command line:
pip install psycopg2

Then, please use pgAdmin to create a database called Bookstore. 
If password is required, please use zyc578875 as the password, so that it can match the connection info in bookstore.ini

In the Bookstore database, please use query tool to run DDL.sql and DML.sql
to initialize the neccessary tables and values before using the interfaces.


* Running users interface

1. Sign-in and Register

After the DDL.sql and DML.sql are running without error, we can start to use the interfaces.
Open a terminal in this directory and type:
python users.py

It will first test the connection to database. The version of PostgreSQL will be printed if connect successfully.
The users interface will ask the user to sign-in or register.
By entering a name and password during registration, the interface will assign the new user a unique account number.
If registered successfully, user will be redirect to sign-in using this account number.

2. Browse books
If the sign-in info entered by user matches the record, the user can start to browse for books.
The interface will return all books that contain the input string in their name/author/ISBN/genre.

3. Add to cart
Enter the full name of a book to add to cart. 
User can choose to browse/add another one/checkout after adding a book.
Due to the design problem, please only add one book for check out. 

4. View and checkout
Users are able to review the books they added in the cart. 
Once checkout, it will ask user to write their address, then the detail of shipping including a order number for tracking is reported, 
where is the end of this interface.

* Running owners interface

1. Select an operation

Select to add a book / delete a book / add publisher / print report 


2. Enter info

Following the instructions to enter corresponding info for the operations.
