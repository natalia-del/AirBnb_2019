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
- **Files**: `RoomTypes.sql`
- **Questions**:
  - Which room type has the most offers?
  - Which room type is the most expensive by neighbourhood and room type?
 **Insights**

  








