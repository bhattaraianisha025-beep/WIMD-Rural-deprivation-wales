# WIMD-Rural-deprivation-wales
# Evaluating WIMD 2025 as a Measure of Rural Deprivation in Wales

## Project Background

Wales Index of Multiple Deprivation(WIMD) is a official statistics used by Welsh Government for policy and funding.It ranks all 1917 small areas(LSOAs) in wales from 1 (most deprived) to 1917 (least deprived)
This project examine whether WIMD 2025 combines its eight deprivation domain adequately capture deprivation in rural Welsh communities, and examines the implications for rural-proofing policy in Wales. It is produced as part of a 10-week professional placement with Rural Health Compass (RHC).This analysis doesnot question accuracy of WIMD’s underlying domain data. WIMD DOMAIN rank are official goverment statistics

## Project Details

- **Student:** Anisha Bhattarai
- **Organisation:** [Rural Health Compass (RHC)](https://ruralhealthcompass.com/)
- **Host Supervisor:** Dr Veronika Rasic
- **University:** University of Aberdeen — MSc Health Data Science
- **Period:** June – August 2026

## Team Context

This project forms part of a three-student placement producing a Rural Proofing Intelligence framework for Wales:

| Student | Research Focus |
|---------|---------------|
| **Anisha Bhattarai (RQ1)** | Evaluating WIMD 2025 as a measurement tool for rural deprivation |
| Ruthikssha Elangovan (RQ2) | Accessibility to primary care, secondary care and everyday services |
| Nina Akporiaye (RQ3) | Digital exclusion and health deprivation in rural Wales |

## Project Aim

To evaluate whether WIMD 2025 domain weighting structure adequately capture rural deprivation and to traslate gap found for RHC to suggest for Wales government in rural proofing policy making and planning.

## Research Question

*Does WIMD 2025 adequately capture rural deprivation in Wales, and what does this mean for rural-proofing policy?*

## Data Sources

All four datasets are included in `data/raw/`.Confirm dataset from below sources:

| Dataset | Provider | Licence | Link |
|---|---|---|---|
| WIMD 2025 — index and domain ranks | Welsh Government | [GOV.WALES](https://www.gov.wales/welsh-index-multiple-deprivation-2025)|
| WIMD 2025 — index and domain scores | Welsh Government | [GOV.WALES](https://www.gov.wales/welsh-index-multiple-deprivation-2025)|
| WIMD 2025 — deep-rooted deprivation data | Welsh Government | [GOV.WALES](https://www.gov.wales/welsh-index-multiple-deprivation-2025)|
| Rural Urban Classification 2021, LSOAs in England & Wales | [ONS Open Geography Portal](https://geoportal.statistics.gov.uk/datasets/ons::rural-urban-classification-2021-of-lsoas-in-ew/explore)|
All © Crown copyright and database right, Open Government Licence v3.0, aggregate-level (LSOA), and contains no individual or identifiable information.

## Constraints (per Welsh Government):
The analysis uses Welsh Government guidance on interpretation of WIMD
- WIMD is relative measure of deprivation in Wales
- Rank doesnot measure absolute level of deprivation
- WIMD finds deprived areas not individuals
- WIMD 2025 and 2019 shouldnot be directly comparable because of geographical changes

## Methods and Analysis :
The analysis follows sequence:
### Step 1- *01-05- Understanding and Validation of data*
The first 5 scripts examine four raw datasets individually for joiniing and exploration of analysis
•	01-Validation_LSOA.Rmd — validation of four datasets and LSOA identifiers
•	02_Explore_Ranks.Rmd — explores WIMD domain and overall ranks
•	03_Explore_Scores.Rmd — explores WIMD domain scores
•	04_Explore_DRD.Rmd — explores 20-year Deep-Rooted Deprivation data
•	05_Explore_RUC.Rmd — explores the rural/urban classification
### Step 2- *06- Construct master dataset*
After building master dataset from all four dataset joining by LSOAs. From this point , analysis uses only master dataset
### Step 3-*07-10- Actual Analysis*
- **Domain Comparision**
Compares rural and urban across all eight domains of WIMD by Mann-Whitney U test and effect sizes.
- **Weight-Gap Analysi**
Examine domain weights and investigate the mechanism across rural/urban difference.
- **20 Years tracking**
Tracking of 20 years persistent deprivation in rural and rban
- **Case Studies**
Test pattern in four local authorities(Powys, Ceredigion, Pembrokshire, Swansea) and detail neighbourhood analysis of Ceredigion
### Step 4- *11-Visualization*
Here recomputing of all results and final charts are produced from master dataset


## Results
- **19% vs 81%** - Rural wales scores worse in(Access and Housing domain) carrying only 19% of total WIMD weight whereas urban Wales found worse carrying 81%. 
- **50 of 50** - 50 most deprived areas in Wales are Rural which has 10% of score of overall
- **87.9% vs 1.3%** - Rural areas deprived on income are visible as deprived overall rank whereas rural LSOAs deprived on access almost never appear 
- **189 communities** - Rural areas worst 10%(<= 191 rank)for access but invisible in overall ranking

## Implication for RHC(Rural proofing Policy recomendation)
- Use domain level ranks alongside the overall WIMD rank when funding or service decision made
- Consider whether access and housing weights reflect true impact on rural quality of life, alongside existing evidence base to set them
- Use the 189 communities as starting point for targeted rural service review
- Apply rural lens check to any policy that solely depend on the overall WIMD rank
- Report at small area level within local authorities , so town good access doesnot average away a rural poor access( as seen in Ceredigion)


# Reproducing Analysis

1. Clone repository
```bash 
git clone https://github.com/bhattaraianisha025-beep/WIMD-Rural-deprivation-wales.git
cd WIMD-Rural-deprivation-wales```

2. Add raw datasets
Raw data included in: "data/raw/" using filenames:
- wimd-2025-index-and-domain-ranks-by-small-area.ods
- wimd-2025-index-and-domain-scores-by-small-area.ods
- welsh-index-of-multiple-deprivation-wimd-2025-data-underlying-deep-dooted-deprivation-analysis.ods
- Rural_Urban_Classification_(2021)_of_LSOAs_in_EW.csv

3. Run complete analysis
Open `WIMD-Rural-deprivation-wales.Rproj` in RStudio
— double-click the `.Rproj` file itself, not just the folder and 
run: ```r source("Run_all.R") ``` This runs all 11 scripts in sequence, create master dataset, produce charts

# Environment
Built in **R / RStudio** for data cleaning,analysis and visualization, version-controlled with **Git/GitHub**.

# Required R packages
install.packages("tidyverse")
install.packages("readODS")
install.packages("janitor")
install.packages("scales")
install.packages("rmarkdown")
install.packages("here")

**Structure of Repository**
```
WIMD-Rural-deprivation-wales/
├── README.md
├── LICENSE                          # CC-BY-4.0 — data, figures, report text
├── LICENSE_CODE                     # MIT — R scripts
├── .gitignore
├── .gitattributes
├──WIMD-Rural-deprivation-wales.Rproj   # Open this first
├──.here                                # Project-root marker
├── Run_all.R                     # runs each script in order
├── sessionInfo.txt                  
│
├── data/
│   ├── raw/                         
│   └── processed/
│       └── master_dataset.csv       
│
├── Scripts/
│   ├── 01-Validation-LSOA.Rmd        
│   ├── 02-explore-rank-data.Rmd          
│   ├── 03-explore-score-data.Rmd         
│   ├── 04-explore-drd-data.Rmd            
│   ├── 05-explore-RUC.Rmd            
│   ├── 06-Master-dataset.Rmd         
│   ├── 07-rural-urban-comparision.Rmd 
│   ├── 08-explore-DRD-RU.Rmd        
│   ├── 09-explore-domain-gap.Rmd  
│   ├── 10-case-study-analysis.Rmd    
│   └── 11-Checking-and-visualization-of-data.Rmd     
│
├── outputs/
│   └── charts/                      
│ 
│
└── Presentation for Rural Health compass/
    └── Final Presentation for Rural Health Compass.pptx
```

## Ethics and Data Governance

This project uses only publicly available, aggregate LSOA-level data. No individual-level or identifiable data is processed. Formal NHS ethics approval is not required. The project follows University of Aberdeen research ethics guidance for secondary data analysis.

**Confidentiality:** All datasets are published under open licences by Welsh Government and ONS. No confidential or unpublished organisational data from Rural Health Compass is included in this repository. Internal placement communications, meeting notes and assessment submissions are excluded from version control.

**Data protection:** LSOA-level data (average population ~1,600 per area) carries no individual re-identification risk. No attempt has been made to link these datasets with individual-level records.

## Licence and Copyright

- **Code** (everything in `Scripts/`, `run_all.R`) — MIT Licence, see [`LICENSE_CODE`](LICENSE_CODE)
- **Data outputs, charts, report, presentation** — CC-BY-4.0, see [`LICENSE`](LICENSE)
- **Underlying WIMD/ONS data** — Open Government Licence v3.0 (see Data Sources above)


## Citation of work
>Bhattarai, A. (2026). Evaluating WIMD 2025 as a Measure of Rural Deprivation in Wales. GitHub.https://github.com/bhattaraianisha025-beep/WIMD-Rural-deprivation-wales.git

## Acknowledgements
Placement Host: Dr. Veronica Rasic
Produced as the 10 week placement project of M.Sc. Health Data Science Programme, University of Aberdeen

