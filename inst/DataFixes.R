### Medicare ####

names(MedicareSpending) <- c("drgDefinition", "idProvider",
                             "nameProvider", "addressProvider",
                             "cityProvider", "stateProvider",
                             "zipProvider", "referralRegion",
                             "totalDischarges", "aveCharges",
                             "avePayments", "drg")

MedicareProviders <- unique( MedicareSpending[,c(2,3,4,5,6,7,8)])
MedicareCharges <- MedicareSpending[,c(12,2,9,10,11)]


### CountryData (from CIA Data) ####

getAllCIAdata <- function() {
  Meta <- CIAdata()
  Codes <- Meta$Code
  CountryData <- CIAdata(Codes[1]) %>% select(country) # just the country names
  for (k in 1:nrow(Meta) ) {
    thisVar <- CIAdata(Codes[k])
    names(thisVar) <- c("country", Meta$Name[k])
    CountryData <- merge(CountryData, thisVar, all = TRUE)
  }
  return(CountryData)
}

### Country Groups (e.g., G20, G8, GGG) ####

## GGG: Global Governance Group

# Source: http://www.mfa.gov.sg/content/mfa/overseasmission/newyork/nyemb_statements/global_governance_group/2012/201209/press_20122809.html

GGG <- data.frame(country = c("Bahamas, The", "Bahrain", "Barbados", "Botswana",
                    "Brunei", "Chile", "Costa Rica", "Finland", "Guatemala",
                    "Jamaica", "Kuwait", "Liechtenstein", "Luxembourg", "Malaysia",
                    "Monaco", "Montenegro", "New Zealand", "Panama", "Peru",
                    "Philippines", "Qatar", "Rwanda", "San Marino", "Senegal",
                    "Singapore", "Slovenia", "Switzerland", "United Arab Emirates",
                    "Uruguay","Vietnam"),
                  GGG = "yes" )

## G20
# Source: https://www.g20.org/about_g20/g20_members

G20 <- data.frame(country = c("Argentina", "Australia", "Brazil", "Canada",
                    "China", "France", "Germany", "India", "Indonesia", "Italy",
                    "Japan", "Korea, South", "Mexico", "Russia", "Saudi Arabia",
                    "South Africa", "Turkey", "United Kingdom", "United States",
                    "European Union"),
                  G20 = "yes")

## G8
# Source: http://en.wikipedia.org/wiki/G8
# one data frame with a variable for each Group.

G8 <- data.frame(country = c("Canada", "France", "Germany", "Italy", "Japan",
                             "Russia", "United Kingdom", "United States"),
                 G8 = "yes")

# a <- merge( select(CountryData,country),G8, all=TRUE)
a <- merge(G8, G20, all = TRUE )
a <- merge(a, GGG, all = TRUE)
a <- mutate(a,
            G20 = ifelse(is.na(G20), FALSE, TRUE),
            G8 = ifelse(is.na(G8), FALSE, TRUE),
            GGG = ifelse(is.na(GGG), FALSE, TRUE))
CountryGroups <- a # Then save in CountryGroups.rda

### NCI 60 ####

newNames <- c("cellLine",        "tissue",          "age",             "sex",             "prior.treatment",
              "epithelial" ,     "histology",       "source"  ,        "ploidy",          "p53",
              "mdr",             "doublingtime")
names(nci60cellLine) <- newNames

# Put the names to have a lower case first level

lowerFirst <- function(S) {
  substr(S, 0,1) <- tolower(substr(S,0,1))
  return(S)
}



# for converting factors to character strings in an entire data frame

convert_factor_to_character <- function(data) {
  kinds <- lapply(data, class)
  for (k in 1:length(kinds)) {
    if (kinds[k] == "factor") data[k] <- as.character(data[[k]])
  }
  return(data)
}
