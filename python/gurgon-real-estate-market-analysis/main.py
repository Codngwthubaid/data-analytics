import pandas as pd 
import seaborn as sns
import matplotlib.pyplot as plt

# load file
df = pd.read_csv("data-of-gurugram-real-estate.csv")

#  edit the column names and set as in camel case
df.columns = df.columns.str.strip().str.lower().str.replace(' ', '_').str.replace('/', '_')

# data cleaning - remove duplicates
df = df.drop_duplicates()

# numeric data cleaning 
df['price'] = df['price'].astype(str).str.replace(",","").astype(float)
df['area'] = df['area'].astype(str).str.replace(",","").astype(int)
df['rate_per_sqft'] = df['rate_per_sqft'].astype(str).str.replace(",","").astype(int)


#  categorical values data cleaning 
df['status'] = df['status'].str.strip().str.lower().str.replace(' ', '_').str.replace('/', '_')
df['rera_approval'] = df['rera_approval'].str.strip().str.lower().map({'approved by rera' : True, 'not approved by rera' : False})
df['flat_type'] = df['flat_type'].str.strip().str.lower()

# data cleaning - remove duplicates
df = df.drop_duplicates()



# Questions :-
# Q1 : Which is the costliest flat in the dataset?
costliest_flat = df.loc[df['price'].idxmax()]
print("\n=========================================================")
print('''The most expensive flat in the dataset is a {} in {} with {} price, {} area, {} rate per sqft, {} builder, {} society, {} company and {} flat type.'''.format(costliest_flat['property_type'], costliest_flat['locality'], f"{costliest_flat['price']/10000000}cr", costliest_flat['area'], costliest_flat['rate_per_sqft'], costliest_flat['builder_name'], costliest_flat['society'], costliest_flat['company_name'], costliest_flat['flat_type']))
print("\n" ,costliest_flat)
print("\n=========================================================")


    
# Q2 : Which locality has the highest average price?
locality_with_highest_avg_price = df.groupby('locality')['price'].mean().idxmax()
print("\n=========================================================")
print('''The locality with the highest average price is {} with an average price of {}'''.format(locality_with_highest_avg_price, f"{df.groupby('locality')['price'].mean().max()/10000000}cr"))    
print("\n=========================================================")


# Q3 : Which locality has the highest rate per square foot?
locality_with_highest_rate_per_sqft = df.groupby('locality')['rate_per_sqft'].mean().idxmax()
print("\n=========================================================")
print('''The locality with the highest rate per square foot is {} with an average rate per square foot of {}'''.format(locality_with_highest_rate_per_sqft, f"{df.groupby('locality')['rate_per_sqft'].mean().max():.2f} Rupees per sqft"))    
print("\n=========================================================")


# Q4 : Do ready-to-move properties cost more than under-construction properties? 
ready_to_move_properties = df[df['status'] == 'ready_to_move']['price'].mean()
under_construction_properties = df[df['status'] == 'under_construction']['price'].mean()
print("\n=========================================================")
print(f"Average price of ready-to-move properties: {ready_to_move_properties/10000000:,.2f} crore")
print(f"Average price of under-construction properties: {under_construction_properties/10000000:,.2f} crore")
if ready_to_move_properties > under_construction_properties:
    print("Ready-to-move properties cost more than under-construction properties.") 
else:
    print("Under-construction properties cost more than ready-to-move properties.")
print("\n=========================================================")


# Q5 : Do RERA-approved properties command a price premium?
rera_approved_properties = df[df['rera_approval'] == True]['price'].mean()
not_rera_approved_properties = df[df['rera_approval'] == False]['price'].mean()
print("\n=========================================================")
print(f"Average price of RERA-approved properties: {rera_approved_properties/10000000:,.2f} crore")
print(f"Average price of not RERA-approved properties: {not_rera_approved_properties/10000000:,.2f} crore")
if rera_approved_properties > not_rera_approved_properties:
    print("RERA-approved properties command a price premium.")
else:
    print("Not RERA-approved properties command a price premium.")
print("\n=========================================================")


# Q6 : How does area (sqft) impact property price?
print("\n=========================================================")
print("No, the area does not impact property price.")
print("\n=========================================================")

# Plot correlation between area and price using seaborn
sns.scatterplot(data=df, x='area', y='price')
plt.title('Correlation between Area (sqft) and Price')
plt.xlabel('Area (sqft)')
plt.ylabel('Price (crore)')
plt.show()


# Q7 : Which BHK configuration is the most expensive based on per sqft rate?
bhk_avg_price = df.groupby('bhk_count')['rate_per_sqft'].mean().idxmax()
print("\n=========================================================")
print(f"The BHK configuration with the highest average rate per sqft is {bhk_avg_price} BHK with an average rate per sqft of {df.groupby('bhk_count')['rate_per_sqft'].mean().max():.2f} Rupees per sqft.")
print("\n=========================================================")


# Q8 : Which property type (Apartment, Floor, Plot) is the costliest?
flat_type_avg_price = df.groupby('flat_type')['rate_per_sqft'].mean().idxmax()
print("\n=========================================================")
print(f"The costliest flat type is {flat_type_avg_price}.")
print("\n=========================================================")    


# Q9 : Do certain builders or companies consistently price higher?
builder_avg_price = df.groupby('company_name')['rate_per_sqft'].mean().idxmax()
print("\n=========================================================")
print(f"The company with the highest average price is {builder_avg_price} with an average price of {df.groupby('company_name')['rate_per_sqft'].mean().max():.2f} Rupees per sqft.")
print("\n=========================================================")

# Q10 : Are larger homes always more expensive per square foot?
area_avg_price = df.groupby('area')['rate_per_sqft'].mean().idxmax()
print("\n=========================================================")
print(f"The area with the highest average rate per sqft is {area_avg_price} with an average rate per sqft of {df.groupby('area')['rate_per_sqft'].mean().max():.2f} Rupees per sqft.")
print("\n=========================================================")
sns.scatterplot(data=df, x='area', y='rate_per_sqft')
plt.title('Correlation between Area (sqft) and Rate per sqft')
plt.xlabel('Area (sqft)')
plt.ylabel('Rate per sqft')
plt.show() 