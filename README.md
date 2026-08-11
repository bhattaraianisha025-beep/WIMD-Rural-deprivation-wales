# WIMD-Rural-deprivation-wales
# Evaluating WIMD 2025 as a Measure of Rural Deprivation in Wales

## Project Overview

This project evaluates whether the Welsh Index of Multiple Deprivation (WIMD) 2025 adequately captures the dimensions of deprivation experienced by rural Welsh communities, and examines the implications for rural-proofing policy in Wales. It was produced as part of a 10-week professional placement with Rural Health Compass (RHC).

## Research Question

*To what extent does WIMD 2025 capture the dimensions of deprivation experienced by rural Welsh communities, and what implications does this have for rural-proofing policy in Wales?*

## Placement Details

- **Student:** Anisha Bhattarai
- **Organisation:** [Rural Health Compass (RHC)](https://ruralhealthcompass.com/)
- **Host Supervisor:** Dr Veronika Rasic
- **University:** University of Aberdeen — MSc Health Data Science
- **Course:** PU5926 Professional Placement in Health Data Science
- **Period:** 15 June – 27 August 2026

## Team Context

This project forms part of a three-student placement producing a Rural Proofing Intelligence framework for Wales:

| Student | Research Focus |
|---------|---------------|
| **Anisha Bhattarai (RQ1)** | Evaluating WIMD 2025 as a measurement tool for rural deprivation |
| Ruthikssha Elangovan (RQ2) | Accessibility to primary care, secondary care and everyday services |
| Nina Akporiaye (RQ3) | Digital exclusion and health deprivation in rural Wales |

## Data Sources

All data used in this project is publicly available, aggregate-level (LSOA), and contains no individual or identifiable information.

| Dataset | Source | Geography | Format |
|---------|--------|-----------|--------|
| WIMD 2025 Domain Ranks | [StatsWales](https://stats.gov.wales/) | 1,917 LSOAs | CSV |
| WIMD 2025 Domain Scores | [Welsh Government](https://www.gov.wales/welsh-index-multiple-deprivation-2025) | 1,917 LSOAs | ODS |
| WIMD 2025 Deep Rooted Deprivation | [Welsh Government](https://www.gov.wales/welsh-index-multiple-deprivation-2025) | 1,917 LSOAs | ODS |
| ONS Rural Urban Classification 2021 | [ONS Open Geography Portal](https://geoportal.statistics.gov.uk/) | 1,917 Welsh LSOAs | CSV |


## Methodology

This project uses publicly available Welsh datasets to assess whether WIMD 2025 — the official deprivation measure used for resource allocation in Wales — adequately represents rural deprivation. The analysis compares WIMD domain patterns across rural and urban LSOAs using the ONS Rural Urban Classification 2021, and interprets findings against the Pretty Poverty Report's themes of rural disadvantage.

**Key analytical steps:**

1. Individual dataset exploration and validation
2. Master dataset construction (WIMD + RUC join at LSOA level)
3. Rural vs urban domain comparison (ranks and scores)
4. Deep rooted deprivation analysis by rural/urban status
5. Pretty Poverty framework assessment
6. Case study comparison (Powys, Ceredigion, Pembrokeshire vs Swansea)

**Important methodological constraints** (per Welsh Government guidance):

- WIMD ranks are relative measures — they cannot quantify how deprived an area is
- Ranks cannot be used to infer absolute change over time between WIMD iterations
- WIMD identifies deprived areas, not deprived people
- WIMD 2025 is not directly comparable with WIMD 2019 due to methodology and geography changes

## Tools

- **R** (RStudio) — data cleaning, analysis and visualisation
- **Git/GitHub** — version control and reproducibility

## Ethics and Data Governance

This project uses only publicly available, aggregate LSOA-level data. No individual-level or identifiable data is processed. Formal NHS ethics approval is not required. The project follows University of Aberdeen research ethics guidance for secondary data analysis.

**Confidentiality:** All datasets are published under open licences by Welsh Government and ONS. No confidential or unpublished organisational data from Rural Health Compass is included in this repository. Internal placement communications, meeting notes and assessment submissions are excluded from version control.

**Data protection:** LSOA-level data (average population ~1,600 per area) carries no individual re-identification risk. No attempt has been made to link these datasets with individual-level records.

## Licence and Copyright

All datasets are publicly available under open licences (Open Government Licence, ONS Open Geography). Analytical code and outputs are version-controlled via a GitHub private repository, allowing RHC, the University to reuse and build on the work for educational and policy purposes; 
authorship remains attributable to the student, with sources acknowledged. Safeguards include documenting licence terms and ensuring no re-identification from small-area statistics.

## Repo structure

```
WIMD-Rural-deprivation-wales/
├── README.md
├── LICENSE
├── LICENSE_CODE
├── data/
│   ├── raw/
│   │   ├── wimd_2025_domain_ranks.ods
│   │   ├── wimd_2025_domain_scores.ods
│   │   ├── wimd_2025_deep_rooted_deprivation.ods
│   │   └── ruc_2021_lsoa_classification.csv
│   └── processed/
│       └── master_dataset.csv
├── scripts/
│   ├── 01_validation/
│   │   └── Validation_LSOA.Rmd
│   ├── 02_data_prep/
│   │   ├── Step1_Explore_Ranks.Rmd
│   │   ├── Step2_Explore_Scores.Rmd
│   │   ├── Step3_Explore_DRD.Rmd
│   │   ├── Step4_Explore_RUC.Rmd
│   │   └── Step5_Master_Dataset.Rmd
│   ├── 03_analysis/
│   │   ├── Stage4_Rural_Urban_Comparison.Rmd
│   │   ├── Stage5_DRD_Rural_Urban.Rmd
│   │   ├── Stage6_Domain_Gap_Assessment.Rmd
│   │   └── Stage7_Case_Studies.Rmd
│   └── 04_visualisation/
│       └── Visualisations_All.Rmd
├── outputs/
│   └── charts/
├── report/
│   └── WIMD_Rural_Deprivation_Report.docx
└── presentation/
    └── WIMD_Presentation_Final.pptx
```