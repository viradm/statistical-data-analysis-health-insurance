# Statistical Data Analysis of Health Insurance

## Project Overview
This repository contains a comprehensive statistical analysis of health insurance charges, exploring key factors that influence medical expenses. Using techniques such as data preprocessing, visualization, and regression modeling, this project highlights relationships between variables like age, BMI, and smoking habits.

## Dataset Description
The dataset used in this project includes 1338 records with the following variables:
- **Age:** Age of the primary beneficiary.
- **Sex:** Gender (Male/Female).
- **BMI:** Body Mass Index (kg/m²).
- **Children:** Number of dependents.
- **Smoker:** Smoking status (Yes/No).
- **Region:** Geographical area (Northeast, Southeast, Southwest, Northwest).
- **Charges:** Individual medical costs billed by health insurance.

## Analysis Objectives
- Investigate factors influencing health insurance charges.
- Build predictive models to estimate insurance costs.
- Explore regional and demographic disparities in medical expenses.

## Repository Structure
```
statistical-data-analysis-health-insurance/
│
├── README.md          # Project overview and instructions
├── LICENSE            # License for the repository
├── data/              # Folder for datasets
│   ├── raw/           # Raw dataset files
│   └── processed/     # Cleaned and preprocessed datasets
├── src/               # Source code for analysis
│   ├── preprocessing/ # Scripts for data preprocessing
│   ├── visualization/ # Scripts for generating plots
│   └── modeling/      # Scripts for regression and analysis
├── reports/           # Folder for documentation
│   ├── report.pdf     # The full statistical analysis report
│   └── summary.md     # A concise summary of findings
├── notebooks/         # Jupyter or R markdown notebooks
│   └── eda.ipynb      # Exploratory data analysis notebook
├── images/            # Visualizations and figures
│   └── histograms/    # Histogram plots
│   └── boxplots/      # Boxplot images
├── tests/             # Test scripts to validate code
└── requirements.txt   # Dependencies for the project
```

## Installation Instructions
1. Clone this repository:
   ```bash
   git clone https://github.com/username/statistical-data-analysis-health-insurance.git
   ```
2. Navigate to the project directory:
   ```bash
   cd statistical-data-analysis-health-insurance
   ```
3. Install required dependencies:
   ```bash
   pip install -r requirements.txt
   ```

## Usage
1. Place the raw dataset in the `data/raw/` folder.
2. Run the preprocessing scripts in `src/preprocessing/` to clean and prepare the data.
3. Use the `notebooks/eda.ipynb` file to explore the dataset visually and statistically.
4. Execute scripts in `src/modeling/` to build and evaluate predictive models.

## Results Summary
Key insights from the analysis include:
- Smokers incur significantly higher medical charges than non-smokers.
- BMI and age are positively correlated with health insurance costs.
- Regional disparities are observed in BMI but not in age distribution.

## Credits
This project was conducted as part of the Statistical Data Analysis & Visualization module. Special thanks to Dr. Ayse Ulgen for guidance.

## License
This repository is licensed under the MIT License. See the `LICENSE` file for details.
