# 🚀 ML Regression Practice Exercises

You’ve already tackled the **supermarket sales problem** during the workshop — nice work! 🎉
But the fun doesn’t stop there.

To really master regression, the best thing you can do is **try it out in different scenarios**. Below is a list of open datasets paired with fictional (but realistic) use cases. Think of these as **mini side projects** where you get to play the role of a consultant, analyst, or domain expert.

Each one gives you a chance to practice:

- Translating a dataset into a concrete prediction problem
- Building and comparing regression models with proper validation
- Interpreting model results to identify key drivers and tradeoffs

Pick one that sparks your curiosity and run with it!

---

## 📋 Exercise List

### 1. 🏠 House Prices Prediction

- **Dataset**: [House Prices - Advanced Regression Techniques (Kaggle)](https://www.kaggle.com/c/house-prices-advanced-regression-techniques)
- **Scenario**:
  You’re a real estate consultant advising homeowners. Clients want to know **how much their house could sell for** based on features like size, neighborhood, year built, and amenities.
- **Task**:
  Build a model that predicts house prices. Identify which factors drive housing value most strongly.

---

### 2. 🚲 Bike Sharing Demand

- **Dataset**: [Bike Sharing Dataset (UCI)](https://archive.ics.uci.edu/ml/datasets/bike+sharing+dataset)
- **Scenario**:
  You work for a city’s **bike rental program**. The city wants to optimize bike allocation across different stations. By predicting demand (number of rentals per day), you can prevent shortages during rush hours.
- **Task**:
  Build a regression model to predict daily rentals based on weather, season, and holidays.

---

### 3. 💰 Student Performance and Study Hours

- **Dataset**: [Student Performance Dataset (Kaggle)](https://www.kaggle.com/datasets/spscientist/students-performance-in-exams)
- **Scenario**:
  You are an **education consultant** helping schools understand how study habits and socio-economic factors impact student performance.
- **Task**:
  Predict math scores using features such as parental education, test preparation, and study time. Which factors are most important?

---

### 4. 🍷 Wine Quality Prediction

- **Dataset**: [Wine Quality Dataset (UCI)](https://archive.ics.uci.edu/ml/datasets/wine+quality)
- **Scenario**:
  You are a **winery manager**. Before bottling, you want to predict the **quality score** of wines from their chemical properties (like acidity, sugar, and pH).
- **Task**:
  Predict wine quality and identify which chemical factors most influence it.

---

### 5. ⛽ Energy Efficiency of Buildings

- **Dataset**: [Energy Efficiency Dataset (UCI)](https://archive.ics.uci.edu/ml/datasets/Energy+efficiency)
- **Scenario**:
  As a **sustainability consultant**, you help architects design eco-friendly buildings. Predicting heating and cooling loads helps reduce energy waste.
- **Task**:
  Train a model that predicts building energy consumption from design features (wall area, glazing, roof area, orientation).

---

### 6. 🏥 Medical Insurance Costs

- **Dataset**: [Medical Cost Personal Dataset (Kaggle)](https://www.kaggle.com/datasets/mirichoi0218/insurance)
- **Scenario**:
  You work at an **insurance company**. Customers often ask: *“Why is my premium so high?”* By analyzing customer features (age, BMI, smoking, children), you want to explain and predict costs.
- **Task**:
  Build a regression model to predict medical insurance charges. Identify the strongest cost drivers.

---

### 7. 🌱 Crop Yield Prediction

- **Dataset**: [Crop Production Dataset (FAO / Kaggle)](https://www.kaggle.com/datasets/abhinand05/crop-production-in-india)
- **Scenario**:
  You are a **government agriculture analyst**. Farmers want to know which conditions (fertilizer use, rainfall, region) most affect crop yields.
- **Task**:
  Predict crop production in different regions and provide insights on farming strategies.

---

### 8. 📈 Stock Price Prediction

- **Dataset**: [Stock Market Dataset (Yahoo Finance / Kaggle example)](https://www.kaggle.com/datasets/borismarjanovic/price-volume-data-for-all-us-stocks-etfs)
- **Scenario**:
  You are a **financial analyst** at an investment firm. Your team wants to estimate the **next day’s closing price** of a stock based on features like previous prices, trading volume, and technical indicators.
- **Task**:
  Build a regression model to predict stock closing prices. Compare model accuracy to a simple baseline (e.g., “tomorrow’s price = today’s price”) and discuss what features are most useful.

---

## 💡 How to Use These Exercises

For each dataset:

1. Load and explore the dataset.
2. Formulate the **business problem** (who benefits from the model?).
3. Apply regression techniques (linear regression, regularization, tree-based models).
4. Use **cross-validation** to compare models and avoid overfitting.
5. Evaluate performance with metrics like **RMSE / MAE / R²**.
6. Identify and present the top 2–3 **key drivers** of the target outcome.
7. (Optional) Try advanced regression techniques from the workshop (regularization, ensembles).

The tasks described for each dataset are **suggested starting points**.
Feel free to explore alternative targets, reframe the business problem, or ask your own "what-if" questions. The goal is to practice applying regression flexibly in different scenarios.

---

## 📂 Getting the Datasets

For the workshop, datasets are usually provided as **CSV files** so you can load them directly with:

```python
import pandas as pd

df = pd.read_csv("filename.csv")
print(df.head())
```

For extra exercises:

- **Kaggle datasets**:
  - Create a free Kaggle account.
  - Go to the dataset page → click **Download**.
  - Place the CSV in your project folder.
  - 💡 Kaggle also has a “Code/Notebooks” tab where you can explore how others approached the dataset. Feel free to peek for inspiration or alternative modeling ideas.

- **UCI datasets**:
  - These are often direct CSV or `.data` files.
  - Right-click → **Save As**, then load with `pandas`.

---

## 🔎 Finding Your Own Dataset

If you want to go beyond this list, here are some good places to look:

- **Kaggle Datasets** ([https://www.kaggle.com/datasets](https://www.kaggle.com/datasets))
  Huge collection of public datasets across domains. You can also explore the **“Code/Notebooks”** tab to see how others approached them.

- **UCI Machine Learning Repository** ([https://archive.ics.uci.edu/ml/index.php](https://archive.ics.uci.edu/ml/index.php))
  Classic source of well-studied datasets for regression, classification, and beyond.

- **Google Dataset Search** ([https://datasetsearch.research.google.com/](https://datasetsearch.research.google.com/))
  A search engine for datasets across the web.

- **Public APIs** (e.g., financial data, weather, sports, open government data)
  Many organizations publish APIs you can query to build your own regression dataset.

### Tips for Choosing a Good Dataset

- Prefer datasets with **numeric targets** (continuous values like prices, counts, or ratings).
- Make sure it’s not too small (at least a few hundred rows).
- Start simple: avoid datasets with heavy preprocessing needs until you’re comfortable.
- Bonus points if it’s from a domain you personally care about — motivation matters!

---
