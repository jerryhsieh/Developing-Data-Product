Developing-Data-Product Assignment
=======================================
## Objective

The purpose of this project is to show how many days within year 2014 meet PM 2.5 standard.  Since the standard is different from many countries.  I use slidebar in shiny application to allow visitors to set the standard.

## Data Source

The data is from EPA Goverment organization publish open data, you can find them here

http://taqm.epa.gov.tw/taqm/tw/YearlyDataDownload.aspx

## Data process 

### Data cleaning and grouping

The raw data including every row with different test item per day and column is hourly collected data.  I'm interested only on PM 2.5 so I made a subset of raw data only including PM 2.5. 

For each date, I calculate the daily average, this is what I should put in the final plot

### Shinyapps

Files in the project
* ui.R
* server.R
* Readme.MD
* DESCRIPTION

which also deploy to shinyapps.  you can find result here:  http://jerryhsieh.shinyapps.io/Project


