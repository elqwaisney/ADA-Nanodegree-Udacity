# ADA-Nanodegree-Udacity
This repo contains my projects and the certificate I acheived in my Advanced Data Analysis Nanodegree scholarship at Udacity


# Analyze A/B Test Results

## Project Overview

This project was completed as part of the Advanced Data Analysis Nanodegree. It involves analyzing the results of an A/B test conducted by an e-commerce website to determine whether they should:

- Implement a new webpage,
- Retain the old webpage, or
- Run the experiment longer to make a decision.

The analysis covers probability calculations, hypothesis testing, and regression modeling to draw data-driven conclusions. The notebook is structured into multiple sections, including data cleaning, statistical tests, and modeling.

---

## Table of Contents

- [ADA-Nanodegree-Udacity](#ada-nanodegree-udacity)
- [Analyze A/B Test Results](#analyze-ab-test-results)
  - [Project Overview](#project-overview)
  - [Table of Contents](#table-of-contents)
  - [Getting Started](#getting-started)
  - [Project Workflow](#project-workflow)
    - [Part I: Probability](#part-i-probability)
    - [Part II: A/B Test](#part-ii-ab-test)
    - [Part III: Regression](#part-iii-regression)
  - [Key Findings](#key-findings)
  - [Dependencies](#dependencies)
  - [Results and Visualizations](#results-and-visualizations)
    - [Example Graphs](#example-graphs)
  - [Acknowledgments](#acknowledgments)

---

## Getting Started

To explore the analysis:

1. Clone this repository to your local machine.
   ```bash
   git clone https://github.com/yourusername/ab-test-analysis.git
   ```
2. Install the required Python libraries listed in the `Dependencies` section.
3. Open the Jupyter Notebook `Analyze_AB_Test_Results.ipynb` to follow the analysis step by step.

---

## Project Workflow

### Part I: Probability

- Analyzed the dataset to calculate conversion probabilities.
- Ensured data consistency by removing mismatched group-landing page entries and duplicate user IDs.
- Calculated baseline metrics:
  - Conversion rates for control and treatment groups.
  - Overall conversion probability.

### Part II: A/B Test

- Defined null and alternative hypotheses:
  - **Null Hypothesis ($H_0$)**: The conversion rate of the old page is greater than or equal to the new page.
  - **Alternative Hypothesis ($H_1$)**: The conversion rate of the new page is greater than the old page.
- Simulated conversion rate differences under the null hypothesis using a bootstrap approach.
- Conducted a two-tailed z-test to determine statistical significance.
- Evaluated the p-value and its implications on hypothesis testing.

### Part III: Regression

- Built a logistic regression model to assess the influence of user group (control vs. treatment) on conversion probability.
- Included additional variables (e.g., timestamp) to improve the model's predictive power.

---

## Key Findings

1. The observed difference in conversion rates between the old and new pages was small.
2. The p-value from hypothesis testing was greater than the significance threshold (0.05), indicating insufficient evidence to reject the null hypothesis.
3. Logistic regression reinforced that the group assignment (control vs. treatment) had no significant impact on conversion rates.

**Conclusion**: The analysis suggests that the new page does not lead to higher conversion rates. The company may consider keeping the old page or further optimizing the new page before implementing it.

---

## Dependencies

Ensure the following Python libraries are installed:

- `numpy`
- `pandas`
- `matplotlib`
- `scipy`
- `statsmodels`
  
You can install them using:
```bash
pip install numpy pandas matplotlib scipy statsmodels
```

---

## Results and Visualizations

### Example Graphs

1. **Conversion Rates**: Visualized conversion rates for control and treatment groups.
   ![Conversion Rates](graphs/conversion_rates.png)

2. **Simulated Null Distribution**: Showed the null distribution with the observed difference in conversion rates.
   ![Null Distribution](graphs/null_distribution.png)

3. **Logistic Regression Coefficients**: Highlighted the regression model's output.
   ![Regression Output](graphs/regression_coefficients.png)

_For a full set of visualizations, see the notebook._

---

## Acknowledgments

This project was guided by the Advanced Data Analysis Nanodegree program. The dataset and problem statement were provided as part of the curriculum.
