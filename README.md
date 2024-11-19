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
- **Insights**:
  - The host with the most listings has X offers, significantly above the average of Y offers per host.
  - This indicates that some hosts dominate the market, potentially suggesting a business opportunity or challenge for smaller hosts.


