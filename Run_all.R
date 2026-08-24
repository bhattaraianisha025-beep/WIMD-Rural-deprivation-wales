# Follow and run the full WIMD pipeline in order. Need raw data in data/raw first.
if (!requireNamespace("rmarkdown", quietly = TRUE)) install.packages("rmarkdown")
if (!requireNamespace("here", quietly = TRUE)) install.packages("here")
scripts_in_order <- c(
  "01-Validation-LSOA.Rmd",
  "02-explore-rank-data.Rmd",
  "03-explore-score-data.Rmd",
  "04-explore-drd-data.Rmd",
  "05-explore-RUC.Rmd",
  "06-Master-dataset.Rmd",
  "07-rural-urban-comparision.Rmd",
  "08-explore-DRD-RU.Rmd",
  "09-explore-domain-gap.Rmd",
  "10-case-study-analysis.Rmd",
  "11-Checking-and-visualization-of-data.Rmd"
)
for (f in scripts_in_order) {
  message("==> ", f)
  rmarkdown::render(here::here("Scripts", f), quiet = TRUE)
}

message("\nDone. Dataset: ", here::here("data","processed","master_dataset.csv"),
        " | Charts: ", here::here("outputs","charts"))

writeLines(capture.output(sessionInfo()), here::here("sessionInfo.txt"))
