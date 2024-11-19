# 🏨Airbnb Data Analysis (NYC, 2019)

## 📜Project Overview
This project involves a comprehensive analysis of the Airbnb dataset for New York City in 2019, focusing on various aspects such as host activity, neighborhood dynamics, room types, pricing trends, and availability. The objective is to derive actionable insights that can inform hosts, potential investors, and policy-makers regarding the short-term rental market.

---

## 📦Data Source
The dataset used for this analysis is from Airbnb, specifically containing listings from New York City for the year 2019. The primary table utilized is ab_nyc_2019. I finded it on kaggle. 

---

### **📊Analysis Plan**

### **1. Data Exploration and Cleaning**
Before starting the analysis, important is cleaning our data. Special attention I chained to:
- Find duplicates
- Remove the unncessary characters
- Checked types of data

### **2. Find appropriate questions**
To gain insights from the data, i chose questions like:

#### **Hosts**
- Which host has the most offers?
- What is the average number of offers per host?

#### **Locations**
- Which neighbourhood_group has the most offers?
- Which specific neighbourhood has the most offers?

#### **Room Types**
- Which room type has the most offers?
- Which room type is the most expensive when grouped by neighbourhood and room type?

#### **Prices**
- What is the average price per night in each specific neighbourhood?
- What is the average minimum number of nights required in each specific neighbourhood?
- How does the average price per night compare to the average minimum nights required?

#### **Availability and Reviews**
- Where were the most offers available for 365 days in a year?
- What is the average availability of offers?
- In which year and month did hosts gather the most reviews?

*You can find the SQL scripts addressing these questions in the repository.*

### **1. Hosts Analysis**
- **Files**: [Hosts.sql](DataAnalysis/Hosts.sql)
- **Questions**:
  - Which host has the most offers?
  - What is the average number of offers per host?
**Insights**:
Only 8 hosts provide 10 or more offers, indicating that they dominate the market compared to smaller hosts who manage fewer listings.

The top 3 hosts are:
Mark (ID: 204539)
Lissette (ID: 303939)
Lisel (ID: 22486)

Analysis:
This suggests that the top hosts have significantly more capacity and influence in the market. These hosts might have better resources or professional management capabilities, enabling them to handle multiple listings efficiently. In contrast, smaller hosts are likely individual property owners or occasional renters. 

This could highlight:
Opportunities for small hosts: They might struggle to compete with larger operators unless supported by tailored incentives or platform features.
Market trends: A few dominant hosts may represent professionalization in the rental market, shifting away from casual renting.

---

### **2. Neighbourhood and Neighbourhood Groups**
- **Files**: `Neighbourhood.sql`
- **Questions**:
  - Which neighbourhood_group has the most offers?
  - Which specific neighbourhood has the most offers?
**Insights**:
Calculating the total number of offers (including repeat listings), we obtained the following results:
Brooklyn has the most offers with 249, followed by Manhattan with 210.
Together, these two neighborhood groups dominate the market, accounting for a large majority of all listings compared to Queens (33), the Bronx (26), and Staten Island (25).
The busiest neighborhoods in the neighborhoods group are represented as follows:

- Bronx - 'Eastchester' - 13
- Brooklyn - 'Williamsburg' - 48
- Manhattan - 'Harlem' - 49
- Queens - 'Ridgewood' - 15
- Staten Island - 'Tompkinsville' - 24

Analysis:
Brooklyn and Manhattan are by far the most competitive areas for hosts, likely due to their global popularity and high demand from both tourists and locals.
The significant disparity in listings between Brooklyn/Manhattan and other neighborhood groups suggests a concentration of available accommodations in these prime locations.

This could highlight:
For new hosts, entering these markets can be challenging due to intense competition and higher saturation compared to other areas such as Queens or Staten Island.

### **3. Room Types**
- **Files**: [RoomTypes.sql](DataAnalysis/RoomTypes.sql)
- **Questions**:
  - Which room type has the most offers?
  - Which room type is the most expensive by neighbourhood and room type?
 **Insights**
The analysis of room types and their pricing across neighborhoods reveals the following:

Room Type Availability:

The most available room type is Private Room with 300 offers, followed by Entire Home with 237 offers, and Shared Room with only 6 offers.
This indicates that Private Rooms dominate the market, likely due to their balance of affordability and comfort.
Room Type Pricing Across Neighborhoods:

**On Manhattan:**
Entire Home: $192 (most expensive).
Private Room: $94.
Shared Room: $58.
**On Brooklyn:**
Entire Home: $178.
Private Room: $86.
**On The Bronx:**
Entire Home: $105.
Private Room: $58.
**On Queens:**
Entire Home: $192.
Private Room: $102.
**On Staten Island:**
Private Room: $43 (cheapest option).

Analysis:
Entire Homes are consistently the most expensive option, suggesting high demand for premium, full-space rentals.
Private Rooms are the most abundant and moderately priced, making them the most cost-effective option for both hosts and guests.
Shared Rooms are the least popular, likely due to lower demand for shared accommodations, which may indicate limited comfort or privacy.

This could highlight:
For new hosts: Private Rooms are likely the most viable entry point due to their balance of demand, affordability for guests, and ease of management.
For Airbnb or similar platforms: Promoting Shared Rooms could help attract budget-conscious travelers, while focusing on Entire Homes in premium neighborhoods could cater to high-value customers.

### **4. Pricing Analysis**
- **Files**: [AVGpriceAVGnight.sql](DataAnalysis/AVGpriceAVGnight.sql), [ComparisonofAveragePriceperNighttoAverageNumberofNights.sql](DataAnalysis/ComparisonofAveragePriceperNighttoAverageNumberofNights.sql)
- **Questions**:
  - What is the average price per night in each specific neighbourhood?
  - What is the average minimum number of nights required?
  - How do these metrics compare across neighbourhoods?
- **Insights**:
Based on the analysis of average prices per night and the minimum number of nights required, we observe the following trends across neighborhoods in New York City:

**The Bronx:**
Cheapest: Highbridge – $42.50 per night.
Most Expensive: Eastchester – $105 per night.

**Brooklyn:**
Cheapest: Bushwick – $60 per night.
Most Expensive: Brooklyn Heights – $800 per night.

**Manhattan:**
Cheapest: Inwood – $60.62 per night.
Most Expensive: Midtown – $6002.92 per night.
**Note:**
The exceptionally high average price in Midtown reflects the presence of ultra-luxury accommodations or unique properties commanding premium prices. 
Such listings significantly elevate the average. It’s worth noting that the median price in Midtown may be much lower, making this a specific anomaly within the dataset.

**Queens:**
Cheapest: Jamaica – $55 per night.
Most Expensive: Middle Village – $370 per night.

**Staten Island:**
Cheapest: Tompkinsville – $36 per night.
Most Expensive: St. George – $70 per night.

Analysis:
Brooklyn and Manhattan dominate as the most expensive boroughs:
Brooklyn Heights and Midtown stand out as premium neighborhoods, with extremely high prices driven by their popularity and demand.
For example, Brooklyn offers both high-end locations like Brooklyn Heights ($800) and more affordable options like Bushwick ($60).
Similarly, Manhattan has options ranging from Inwood ($60.62) to Midtown ($6002.92).
Neighborhoods like Bushwick (Brooklyn) and Inwood (Manhattan) offer budget-friendly options, even in the city’s most visited boroughs.

This could highlight:
Hosts have the opportunity to compete on price, especially in Brooklyn and Manhattan, where a variety of prices allows for flexibility in reaching different guest segments. Customers also have flexible choices.





