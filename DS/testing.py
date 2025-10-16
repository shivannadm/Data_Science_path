import mysql.connector

try:
    conn = mysql.connector.connect(
        host="localhost",
        user="root",
        password="root@145"
    )
    print("✅ Connected to MySQL!")
except mysql.connector.Error as err:
    print("❌ Error:", err)
