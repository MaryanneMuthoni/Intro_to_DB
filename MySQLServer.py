# python script that creates the database alx_book_store in your MySQL server

import mysql.connector

# Database connection details (replace with your own)
mydb = mysql.connector.connect(
    host="localhost",
    user="yourusername",
    password="yourpassword",
    database="mydb"
)

try:
    mycursor = mydb.cursor()
    mycursor.execute("""CREATE DATABASE IF NOT EXISTS alx_book_store;""")
expect mysql.connector.Error as e:
    print(e)
else:
    print("Database 'alx_book_store' created successfully!")
finally:
    mycursor.close()
    mydb.close()
    print("Database connection closed.")
