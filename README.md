# 🛒 E-Commerce Funnel & Conversion Analysis

This project explores how customers move through a multi-step e-commerce purchasing journey and identifies where users drop off before completing a purchase. The goal is to use data-driven insights to understand customer behaviour, improve conversion rates, and support better business decisions.

---

## 📌 Overview

The primary objective of this project is to analyze customer behaviour across a typical online shopping journey — from visiting the homepage to reaching the purchase confirmation stage. By applying funnel analysis techniques, the project identifies customer drop-off points, measures conversion performance, and explores purchasing patterns.

This project simulates a real-world product analytics and business intelligence use case commonly encountered in e-commerce businesses.

---

## 🚀 Key Features

- 📊 **Dataset**: Uses `customer_journey.csv`, containing 12,719 records and 10 columns related to customer sessions and website interactions.
- 🧠 **Funnel Construction**: Builds a five-stage funnel (Home → Product Page → Cart → Checkout → Confirmation).
- 📈 **Conversion Metrics**: Calculates overall conversion rates and stage-wise customer drop-off percentages.
- 📱 **Device-Based Analysis**: Compares conversion rates across different device types.
- 🌐 **Traffic Source Analysis**: Evaluates customer conversion performance across referral sources.
- 🕒 **Time-Based Analysis**: Examines hourly conversion patterns to understand purchasing behaviour.
- 💻 **Dual-Stack Analytics**: Implements funnel analysis using both Python and SQL.
- 📝 **Business Insights**: Presents key findings and actionable recommendations.
- 🔁 **Reproducibility**: Includes a `requirements.txt` file for setting up the Python environment.

---

## 1️⃣ Data Preparation

- Loaded customer journey data from the CSV file using Pandas.
- Examined dataset dimensions, column names, and data types.
- Checked for missing values and performed initial data validation.
- Converted timestamps into datetime format.
- Extracted useful time-based features such as hour, day, and month.

---

## 2️⃣ Funnel Construction & Metrics

- Designed a five-stage funnel representing the e-commerce customer journey.
- Analyzed unique sessions across each funnel stage.
- Calculated overall conversion rates from the initial stage.
- Measured stage-wise customer drop-off percentages.
- Visualized funnel performance to identify major conversion gaps.

---

## 3️⃣ Segmentation Analysis

- **📱 Device-Based Analysis**

  Compared conversion rates across different device types to understand variations in customer purchasing behaviour.

- **🌐 Traffic Source Analysis**

  Evaluated conversion performance across different referral sources to understand which channels generate better purchase outcomes.

- **🕒 Time-Based Analysis**

  Examined hourly conversion rates to identify variations in purchasing activity throughout the day.

---

## 4️⃣ SQL-Based Funnel Analysis

In addition to Python, SQL was used to reconstruct the e-commerce funnel and calculate conversion metrics.

- Created a session-level funnel using `CASE WHEN` statements.
- Aggregated customer sessions across funnel stages.
- Calculated stage-wise conversion percentages.
- Used `NULLIF()` to handle division-by-zero scenarios.
- Executed SQL queries using SQLite.

This demonstrates the application of SQL for structured data analysis and business intelligence workflows.

---

## 📈 Key Insights

- The overall conversion rate from **Home → Confirmation** is approximately **20.20%**.
- The largest customer drop-off occurs between **Product Page → Cart**, at approximately **59.89%**.
- Conversion rates vary across device types, highlighting differences in customer purchasing behaviour.
- Different referral sources show varying conversion performance.
- Hourly conversion analysis reveals changes in purchasing patterns throughout the day.

---

## 💡 Business Recommendations

- Improve product descriptions, images, and pricing visibility to encourage customers to add products to their carts.
- Simplify the checkout process to reduce customer drop-offs.
- Optimize the website experience for devices with lower conversion rates.
- Focus marketing efforts on referral sources generating higher conversion rates.
- Use hourly conversion trends to plan targeted promotions and marketing campaigns.

---

## 🚀 How to Run the Project

**1. Clone the repository**

```bash
git clone <your-github-repository-url>
```

**2. Navigate to the project directory**

```bash
cd Ecommerce-Analysis
```

**3. Install the required dependencies**

```bash
pip install -r requirements.txt
```

**4. Launch Jupyter Notebook**

```bash
jupyter notebook
```

Open `ecommerce_funnel_analysis.ipynb` and execute the notebook cells.

---

## 📂 Project Files

- `ecommerce_funnel_analysis.ipynb` – Python analysis and visualizations.
- `funnel_analysis.sql` – SQL queries for e-commerce funnel analysis.
- `customer_journey.csv` – Dataset used for the analysis.
- `requirements.txt` – Required Python libraries.

---

## 👩‍💻 Author

**Shravani Patil**

Data Analytics | Python | SQL | Data Visualization