SELECT * 
FROM luxury_housing_bangalore_table 
LIMIT 10;

#properities(count by buyer type)
SELECT Buyer_Type, COUNT(*) AS Total_Buyers
FROM luxury_housing_bangalore_table
GROUP BY Buyer_Type;


#properities(above 2000sqft)
SELECT Property_ID, Project_Name, Unit_Size_Sqft, Configuration, Transaction_Type, Buyer_Type
FROM luxury_housing_bangalore_table
WHERE Unit_Size_Sqft > 2000
LIMIT 10;

#properities(ready to move)
SELECT Property_ID, Project_Name, Developer_Name, Possession_Status, Sales_Channel
FROM luxury_housing_bangalore_table
WHERE Possession_Status = 'Ready to Move'
LIMIT 10;

#properities(NRI buyers)
SELECT Property_ID, Project_Name, Buyer_Type, NRI_Buyer, Purchase_Quarter, Transaction_Type
FROM luxury_housing_bangalore_table
WHERE NRI_Buyer = 'Yes'
LIMIT 10;

#properities(connectivity and amentity score)
SELECT Property_ID, Project_Name, Connectivity_Score, Amenity_Score, Locality_Infra_Score, Micro_Market
FROM luxury_housing_bangalore_table
WHERE Connectivity_Score > 8 AND Amenity_Score > 8
LIMIT 10;