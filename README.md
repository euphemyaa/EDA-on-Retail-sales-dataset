# 🛒 EDA on Retail sales data  
## 📌 Project Overview  
This project explores a retail sales dataset with the aim of understanding customer behavior, product performance, and sales trends. The analysis involved data cleaning using PostgreSQL and data visualization using Tableau. The dataset was downloaded from a public source and imported into pgAdmin4 for structured querying and analysis.  

## 🧹 Data Cleaning and Preparation  
For the dataset:<a href = "/project files\retail_sales_dataset - retail_sales_dataset.csv">Dataset</a>
**Tool Used:** PostgreSQL via pgAdmin4  

**Steps involved:**  

Imported the dataset into PostgreSQL using CSV import functionality.  

Checked for missing values across all columns using SQL queries.  
✅ No missing values found.  

Checked for duplicate records based on Transaction ID.  
✅ No duplicate entries.  

Verified data consistency:  

Ensured no negative values in Quantity or Total Amount.  

Validated that Total Amount = Quantity × Price per unit.  
✅ No inconsistencies or miscalculations found.  

## 📊 Statistical Analysis  
**Using SQL, basic descriptive statistics were derived to understand the distribution of sales values:**  

**Mean (Average Total Amount):** $456  

**Median:** Computed using PERCENTILE_CONT(0.5)  

**Mode:** Most frequent transaction value found using grouping and ordering  

**Standard Deviation:** Measured to understand spread in total sales values  

For reference the sql file: <a href = "project files\Retail-sales.sql">sql file</a>  

## 📈 Sales Trends and Product Performance  
### 🗓️ Sales Over Time  
**Month with highest sales:** May, generating $53,150 in total revenue.  

**📌 Potential reasons:** promotions, seasonal demand, or sales clearance campaigns.  

### 🥇 Top-Selling Product Category  
Electronics led in total revenue, accounting for 43.73% of May’s sales.  

### 🧮 Sales Summary:  
**Total Sales Revenue:** $456,000  

**Total Quantity Sold:** 2,514 units  

**Average Order Value (AOV):** $456  

### 👥 Customer Demographics & Behavior  
**🔍 Gender-Based Insights:**
Female customers accounted for 51% of total sales.  

**Preferred category:** Beauty products  

Age group 26–35 spent significantly on Clothing  

Male customers were the primary buyers of Electronics and Clothing.  

Age group 46–55 contributed the highest revenue among all customers.  

### 🔢 Quantity Sold by Category:  
|**Category**	| **Quantity Sold**|  
|---------------|--------------|  
|Clothing	    | 894          |  
|Electronics    | 849          |  
|Beauty	        | 771          |  

### 💵 Average Price by Category:  
|**Category**	| **Avg. Price per Unit**|  
|---------------|------------------------|  
|Beauty	        | $184               |  
|Electronics    | $181               |  
|Clothing	    | $174               |  

## 📉 Key Insights  
**Peak Sales Month – May:**  
The month of May recorded the highest sales, totaling $53,150. This surge in sales could be attributed to seasonal factors, marketing promotions, or clearance sales. This trend highlights a potential annual pattern that can be leveraged in future campaigns.  

**Electronics Dominated May Sales:**  
In May, Electronics accounted for 43.73% of total sales. A closer look shows that males, particularly within the 46–55 age group, made the majority of these purchases. This demographic is highly responsive to tech-related offerings during this period.  

**Customer Demographics – Gender & Age:**  

Females contributed 51% of total sales, making them the largest consumer group in the dataset.  

The 46–55 age group emerged as the most valuable age segment, showing consistent purchasing across various categories, especially Electronics and Beauty.  

Females aged 26–35 showed high engagement with Clothing and Beauty, suggesting that they are fashion- and appearance-conscious shoppers.  

**Product Preferences by Gender:**  

Men primarily purchased Electronics and Clothing.  

Women leaned heavily toward Beauty products, with some crossover into Clothing as well.  

This suggests gender-specific marketing strategies could drive more conversions.  

**Average Product Pricing and Value:**  

Beauty products are the most expensive, with an average price of $184, followed by Electronics ($181) and Clothing ($174).  

Despite their high price, Beauty products have the lowest quantity sold, suggesting a premium product perception or niche market demand.  

**Purchase Behavior Patterns:**  

Many customers make high-value purchases in small quantities, especially in the Electronics and Beauty categories.  

Clothing, though less expensive, sells in higher volume, indicating it may be a replenishment-driven category (frequent purchases).  

## ✅ Recommendations  
**Seasonal Campaigns & Promotions:**  

Run targeted promotional campaigns in May, as this month sees a natural sales spike.  

Offer early-bird promotions, seasonal discounts, or bundle deals around Electronics and Clothing in second quarter.  

Consider launching new product lines or tech gadgets in early second quarter to ride the momentum.  

**Segmented Marketing Strategies:**  

**For Women aged 26–35:** Focus on fashion and beauty-related campaigns. Promote new clothing arrivals, loyalty programs, or beauty bundles.  

**For Men aged 46–55:** Target them with premium Electronics, highlighting features, durability, and value-for-money through newsletters or retargeting ads.  

**Product Pricing & Upselling Opportunities:**  

Explore pricing elasticity in the Beauty category. Given its premium price, test strategies like:  

Tiered pricing (basic, deluxe, premium)  

Offering smaller-sized versions to drive trial and volume  

Promote bundle purchases (e.g., electronics + accessories, beauty kits) to increase average order value.  

**Inventory & Supply Chain Planning:**  

Stock up on Electronics and Clothing inventory ahead of May.  

Analyze historical stock-out patterns to avoid missed revenue opportunities during peak demand months.  

**Customer Retention and Loyalty:**  

Develop loyalty programs for top segments:  

Points-based system for frequent Clothing buyers  

Exclusive previews or early-access deals for Electronics enthusiasts  

Send personalized offers based on gender and age preferences.  

**Category Development and Expansion:**  

Introduce mid-range beauty products to attract more price-sensitive customers.  

Investigate whether new sub-categories within Electronics or Clothing (e.g., smart wearables, fitness clothing) could perform well with specific age/gender groups.  

**Data-Driven Personalization:**  

Leverage demographic data to personalize homepage experiences on e-commerce platforms.  

Use previous purchase history and demographic attributes for dynamic email recommendations.  

<img src = "project files\WhatsApp Image 2025-07-07 at 4.36.50 AM.jpeg">

## 🧰 Tools and Technologies  
PostgreSQL: For data cleaning, transformation, and statistical analysis.  

Tableau: For data visualization and insight presentation.  

GitHub: For project documentation and version control.  

## 📌 Conclusion  
This analysis provides a solid foundation for making data-driven decisions in a retail business environment. By understanding customer preferences and purchasing trends, targeted marketing and strategic planning can significantly enhance business performance.
