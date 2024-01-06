# Survival Analysis on Debt Obligation Defaults

This project applies survival analysis techniques to analyze the likelihood of default on debt obligations over time. Survival analysis is a statistical approach commonly used in time-to-event analysis, and in this context, it helps us understand the time until a debt obligation defaults.

## Project Overview

### Purpose

The purpose of this project is to model and analyze the survival function of debt obligations, focusing on predicting the probability of default over time. Survival analysis allows us to estimate the time until an event (default) occurs, considering censored data where not all debt obligations may have defaulted by the end of the observation period.

### Data

The project uses a dataset containing information on when debt default occured which is contained in the [MAIN DATA.xlsx](https://github.com/bryan-alot/Survival-Analysis/raw/main/MAIN%20DATA.xlsx) file.

### Survival Analysis Techniques

Survival analysis technique used in this project is Kaplan-Meier estimation. This techniques help us model the hazard rate and make predictions about the time to default.

## Code Structure

### 1. Loading and Preprocessing Data

The project starts by loading the debt obligation dataset and performing necessary preprocessing steps, such as handling missing values and converting date columns.

### 2. Survival Analysis Modeling

The core of the project involves applying survival analysis techniques to model the default behavior of debt obligations. This includes estimating survival curves, fitting survival models, and assessing model performance.

### 3. Visualization

The code includes visualization techniques to present survival curves, hazard functions, and any other relevant insights derived from the analysis. This has been illustrated in the [Project Analysis and Results.pdf]() file.

## How to Use

To use this code:

1. Ensure you have R and the necessary packages installed (e.g., `survival`).
2. Clone this repository to your local machine.
3. Run the provided R script ([`Reviewed Project Results.R`](https://github.com/bryan-alot/Survival-Analysis/blob/main/Reviewed%20Project%20Results.R)).

## Additional Notes

- Modify the code to adapt to your specific debt obligation dataset.
- Consider incorporating additional features or economic indicators for a more comprehensive analysis.
- Experiment with different survival analysis techniques and compare their performance.

Feel free to explore and adapt this project for your own analysis of debt obligation defaults!
