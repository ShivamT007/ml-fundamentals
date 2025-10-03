# Regression

## What is Regression?

Regression is a fundamental statistical and machine learning technique used to model and analyze the relationship between a dependent variable (target) and one or more independent variables (features). It helps us understand how the typical value of the dependent variable changes when any one of the independent variables is varied.

**Key Concepts:**
- **Dependent Variable (Target):** The variable we want to predict (e.g., sales, price, temperature)
- **Independent Variables (Features):** The variables used to make predictions (e.g., advertising spend, size, time)
- **Model:** The mathematical relationship between features and target
- **Prediction:** Using the learned model to estimate target values for new data

**Why is Regression Important?**
- **Forecasting:** Predict future outcomes (e.g., sales revenue, demand)
- **Causal Analysis:** Identify key drivers of business metrics
- **Decision Support:** Enable data-driven decision making
- **Pattern Recognition:** Detect trends and relationships in data
- **Resource Planning:** Optimize allocation based on predictions

## Types of Regression

- **Linear Regression:** Models linear relationships using a straight line
- **Multiple Linear Regression:** Extends to multiple features
- **Polynomial Regression:** Captures non-linear relationships using polynomial curves
- **Regularized Regression:** Ridge and Lasso regression prevent overfitting
- **Advanced Techniques:** Decision trees, random forests, neural networks

## Supermarket Sales Dataset

This module uses the **Supermarket Sales dataset** to demonstrate regression techniques in a real-world business context. As a supermarket manager, you want to understand the main drivers of sales to optimize revenue and target offers effectively.

**Dataset Overview:**
The dataset contains 1,000 sales records from a supermarket chain with detailed transaction information across multiple branches and product categories.

**Key Features:**
- **Invoice ID:** Unique transaction identifier
- **Branch:** Supermarket branch (A, B, or C)
- **City:** Branch location (Yangon, Naypyitaw, Mandalay)
- **Customer type:** Member or Normal customer
- **Gender:** Customer gender
- **Product line:** Product category (Health & beauty, Electronic accessories, etc.)
- **Unit price:** Price per item
- **Quantity:** Number of items purchased
- **Tax 5%:** Tax amount (5% of subtotal)
- **Sales:** Total sales amount (target variable)
- **Date/Time:** Transaction timestamp
- **Payment:** Payment method (Cash, Credit card, Ewallet)
- **COGS:** Cost of goods sold
- **Gross margin percentage:** Profit margin
- **Gross income:** Gross profit
- **Rating:** Customer satisfaction rating (1-10)

**Possible Business Questions to Answer:**
- Which factors most influence total sales?
- How do different product lines affect revenue?
- What's the impact of customer type on purchasing behavior?
- Can we predict sales based on store characteristics?
- How do seasonal patterns affect sales performance?

## File Structure

```
regression/
├── README.md                      # This file - overview and theory
├── exercise.md                    # Excercises to apply regression techniques
├── 01_regression.ipynb            # Introduction to regression concepts and linear regression
├── 02_feature_engineering.ipynb   # Feature selection, transformation, and engineering
├── 03_evaluation.ipynb            # Model evaluation metrics and techniques
├── 04_cross_validation.ipynb      # Cross-validation and model selection
└── 05_advanced_regression.ipynb   # Advanced regression techniques and optimization
```

**Learning Path:**
1. **Start with `01_regression.ipynb`** - Learn basic regression theory and apply linear regression
2. **Continue with `02_feature_engineering.ipynb`** - Improve models through feature engineering
3. **Master evaluation in `03_evaluation.ipynb`** - Learn to assess model performance
4. **Understand validation in `04_cross_validation.ipynb`** - Prevent overfitting with proper validation
5. **Explore advanced techniques in `05_advanced_regression.ipynb`** - Regularization and ensemble methods

Each notebook builds upon the previous one, providing a comprehensive journey from basic concepts to advanced regression modeling techniques using the supermarket sales dataset.

## Contact
If you have any questions, please reach out to Alessia Lin (<alessialin@microsoft.com>)
