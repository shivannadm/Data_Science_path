import pandas as pd
import random
from datetime import datetime, timedelta

products = [
    {"Product_ID": 1, "Product_Name": "Laptop", "Category": "Electronics", "Price": 800},
    {"Product_ID": 2, "Product_Name": "Mouse", "Category": "Electronics", "Price": 20},
    {"Product_ID": 3, "Product_Name": "T-Shirt", "Category": "Clothing", "Price": 15},
    {"Product_ID": 4, "Product_Name": "Jeans", "Category": "Clothing", "Price": 40}
]

sales_data = []
start_date = datetime(2025, 1, 1)
for i in range(10):
    product = random.choice(products)
    sale_date = start_date + timedelta(days=random.randint(0, 30))
    sales_data.append({
        "Product_ID": product["Product_ID"],
        "Product_Name": product["Product_Name"],
        "Category": product["Category"],
        "Quantity_Sold": random.randint(1, 10),
        "Price": product["Price"],
        "Sale_Date": sale_date.strftime("%Y-%m-%d")
    })

df = pd.DataFrame(sales_data)
df.to_csv("sales_data.csv", index=False)
print("CSV generated:", df)