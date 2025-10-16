import pandas as pd
import mysql.connector
from mysql.connector import Error

try:
    conn = mysql.connector.connect(
        host="localhost",
        user="root",
        password="root@145",
        database="sales_db"
    )
    cursor = conn.cursor()
    df = pd.read_csv("sales_data.csv")

    for index, row in df.iterrows():
        sql = """
        INSERT INTO sales (Product_ID, Product_Name, Category, Quantity_Sold, Price, Sale_Date)
        VALUES (%s, %s, %s, %s, %s, %s)
        """
        cursor.execute(sql, tuple(row))
    conn.commit()
    print("Data inserted successfully!")
except Error as e:
    print(f"Error: {e}")
finally:
    cursor.close()
    conn.close()