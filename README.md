# WIMD-Rural-deprivation-wales
# Evaluating WIMD 2025 as a Measure of Rural Deprivation in Wales

## Project Overview

This project evaluates whether the Welsh Index of Multiple Deprivation (WIMD) 2025 adequately captures the dimensions of deprivation experienced by rural Welsh communities, and examines the implications for rural-proofing policy in Wales. It was produced as part of a 10-week professional placement with Rural Health Compass (RHC).

## Research Question

*To what extent does WIMD 2025 capture the dimensions of deprivation experienced by rural Welsh communities, and what implications does this have for rural-proofing policy in Wales?*

## Placement Details

- **Student:** Anisha Bhattarai
- **Organisation:** [Rural Health Compass (RHC)](https://ruralhealthcompass.com/)
- **Supervisor:** Dr Veronika Rasic
- **University:** University of Aberdeen — MSc Health Data Science
- **Course:** PU5926/7 Professional Placement in Health Data Science
- **Period:** 10 June – 22 August 2026

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

## Repository Structure

```
├── README.md                  
├── LICENSE                     
├── .gitignore                 
│
├── data/
│   ├── raw/                   # Original downloaded files (not tracked by git)
│   └── processed/             # Cleaned and joined datasets
│
├── scripts/
│   ├── 01_explore_wimd_ranks.R
│   ├── 02_explore_wimd_scores.R
│   ├── 03_explore_deep_rooted_deprivation.R
│   ├── 04_explore_ruc.R
│   ├── 05_build_master_dataset.R
│   ├── 06_rural_urban_domain_comparison.R
│   ├── 07_deep_rooted_deprivation_analysis.R
│   ├── 08_pretty_poverty_mapping.R
│   └── 09_case_study_areas.R
│
├── output/
│   ├── tables/                # Summary statistics and comparison tables
│   ├── figures/               # Charts and visualisations
│   └── maps/                  # Spatial visualisations (if applicable)
│
└── docs/
    ├── assessment2/           # Data handling write-up
    ├── assessment3/           # Analysis write-up
    └── assessment4/           # Policy communication write-up
```

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

All written materials, code and creative work produced during this placement are the intellectual property of Rural Health Compass (RHC) as per the placement copyright agreement. RHC retains the right to use, share and modify these materials. The student's contribution is acknowledged.

This repository is **private**. Access is restricted to the student, RHC supervisor, and University of Aberdeen course staff for the purposes of placement supervision and academic assessment.

The underlying datasets used in this project are publicly available under their respective open licences (Open Government Licence for Welsh Government data; ONS Open Geography Licence for ONS data). RHC's copyright applies to the analysis, code and outputs — not to the source data.