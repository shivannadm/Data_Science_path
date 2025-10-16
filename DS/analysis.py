import pandas as pd

# Load the data
df = pd.read_csv("sales_data.csv")

# Basic insights
# 1. Total revenue per product
df['Revenue'] = df['Quantity_Sold'] * df['Price']
total_revenue = df.groupby('Product_Name')['Revenue'].sum().reset_index()
print("Total Revenue per Product:")
print(total_revenue)

# 2. Total quantity sold per category
quantity_by_category = df.groupby('Category')['Quantity_Sold'].sum().reset_index()
print("\nTotal Quantity Sold per Category:")
print(quantity_by_category)

# 3. Sales trend by date
sales_by_date = df.groupby('Sale_Date')['Revenue'].sum().reset_index()
print("\nSales Trend by Date:")
print(sales_by_date)