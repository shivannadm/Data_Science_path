import pandas as pd
import mysql.connector
from mysql.connector import Error

try:
    # Attempt connection
    print("Attempting to connect to MySQL...")
    conn = mysql.connector.connect(
        host="localhost",
        user="root",
        password="root@145",
        database="sales_db"
    )
    print("Connected to MySQL successfully!")
    
    cursor = conn.cursor()
    
    # Read the CSV
    df = pd.read_csv("sales_data.csv")
    print("CSV loaded:", df)
    
    # Insert data
    for index, row in df.iterrows():
        sql = """
        INSERT INTO sales (Product_ID, Product_Name, Category, Quantity_Sold, Price, Sale_Date)
        VALUES (%s, %s, %s, %s, %s, %s)
        """
        cursor.execute(sql, tuple(row))
        print(f"Inserted row {index + 1}")
    
    conn.commit()
    print("Data inserted successfully!")
    
except Error as e:
    print(f"Error: {e}")
except FileNotFoundError:
    print("Error: sales_data.csv not found")
except Exception as e:
    print(f"Unexpected error: {e}")
finally:
    if 'cursor' in locals():
        cursor.close()
    if 'conn' in locals() and conn.is_connected():
        conn.close()
        print("MySQL connection closed")