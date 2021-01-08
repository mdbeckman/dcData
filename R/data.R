### BabyNames ####

#' @title Names of children as recorded by the US Social Security Administration.
#'
#' @description The US Social Security Administration provides yearly lists of names given
#' to babies. These data combine the yearly lists.
#'
#' `BabyNames` is the raw data from the SSA. The case is a year-name-sex, for
#' example: Jane F 1922. The count is the number of children of that sex given
#' that name in that year. Names assigned to fewer than five children of one
#' sex in any year are not listed, presumably out of privacy concerns.
#'
#' @docType data
#'
#' @usage data("BabyNames")
#'
#' @format A data frame with 1,792,091 entries on four variables:
#' \describe{
#'   \item{name}{The given name (character string)}
#'   \item{sex}{F or M (character string)}
#'   \item{count}{The number of babies given that name and of that sex. (integer)}
#'   \item{year}{Year of birth (integer)}
#' }
#'
#' @source The data were compiled from the US Social Security Administration
#' web site: <http://www.ssa.gov/oact/babynames/names.zip>
#'
#' @examples
#' data(BabyNames)
#' str(BabyNames)
"BabyNames"


### CountryCentroids ####

#' @title Geographic locations of countries
#'
#' @description Gives the latitude and longitude for many countries. A single point — the
#' centroid of the country's boundaries — is given. Countries are identified
#' by English name and by the ISO A3 code.
#'
#' @docType data
#'
#' @usage data("CountryCentroids")
#'
#' @format A data frame with 241 observations on the following 4 variables:
#' \describe{
#'   \item{name}{country name in English, e.g., Afghanistan, Zimbabwe}
#'   \item{iso_a3}{The ISO A3 code for the country, e.g. AFG, ZWE}
#'   \item{long}{Longitude in degrees}
#'   \item{lat}{Latitude in degrees}
#' }
#'
#' @source The centroids were derived from country boundary map data as the
#' medians of the boundary points latitude and longitude.
#'
#' @examples
#' data(CountryCentroids)
#' plot(lat ~ long, data=CountryCentroids)
"CountryCentroids"


### CountryData ####

#' @title Many variables on countries from the CIA factbook (2014)
#'
#' @description The CIA Factbook has geographic, demographic, and economic data on a
#' country-by-country basis. In the description of the variables, the 4-digit
#' number indicates the code used to specify that variable on the data and
#' documentation web site. For instance,
#' <https://www.cia.gov/library/publications/the-world-factbook/fields/2153.html>
#' contains documentation for variable code 2153, network users.
#'
#' @docType data
#'
#' @usage data("CountryData")
#'
#' @format A data frame on the following 76 variables for each of 256 Countries in the World.
#' \describe{
#'   \item{country}{Name of the country.}
#'   \item{area}{area (sq km), 2147}
#'   \item{pop}{number of people, 2119}
#'   \item{growth}{growth rate per year (\%),2002}
#'   \item{birth}{birth rate (#/1000), 2054}
#'   \item{death}{death rate (#/1000), 2066}
#'   \item{migr}{net migration per year (#/1000). Difference between incoming and outgoing. 2112}
#'   \item{maternal}{maternal deaths per 100,000 live births. 2223}
#'   \item{infant}{infant deaths per 1000 live births. 2091}
#'   \item{life}{life expectancy (years), 2102}
#'   \item{fert}{children born/woman (#/person), 2127}
#'   \item{health}{health spending (\% of GDP), 2225}
#'   \item{HIVrate}{people with HIV (\% of population), 2155}
#'   \item{HIVpeople}{people with HIV (#), 2156}
#'   \item{HIVdeath}{deaths from HIV (#/year), 2157}
#'   \item{obesity}{fraction of population considered obese (\%), 2228}
#'   \item{underweight}{education spending (\% of GDP), 2206}
#'   \item{educ}{education spending (\% of GDP), 2206}
#'   \item{unemploymentYouth}{youth unemployment (\%), 2229}
#'   \item{GDP}{Gross Domestic Product ($), 2001}
#'   \item{GDPgrowth}{growth in GDP (\%/year), 2003}
#'   \item{GDPcapita}{GDP per capita ($/person), 2004}
#'   \item{saving}{yearly money savings (\% of GDP), 2260}
#'   \item{indProd}{Industrial production growth rate (\%), 2089}
#'   \item{labor}{Labor force (people), 2095}
#'   \item{unemployment}{Unemployment rate (\%), 2129}
#'   \item{family}{Distribution of family income - Gini index (Gini index), 2172}
#'   \item{tax}{Taxes and other revenues (\% of GDP), 2221}
#'   \item{budget}{Budget surplus (+) or deficit (-) (\% of GDP), 2222}
#'   \item{debt}{Public debt (\% of GDP), 2186}
#'   \item{inflation}{Inflation rate (consumer prices) (\%), 2092}
#'   \item{discount}{Central bank discount rate (\%), 2207}
#'   \item{lending}{Commercial bank prime lending rate (\%), 2208}
#'   \item{narrow}{Stock of narrow money ($), 2214}
#'   \item{broad}{Stock of broad money ($), 2215}
#'   \item{credit}{Stock of domestic credit ($), 2211}
#'   \item{shares}{Market value of publicly traded shares ($), 2200}
#'   \item{balance}{Current account balance ($), 2187}
#'   \item{exports}{Exports ($), 2078}
#'   \item{imports}{Imports ($), 2087}
#'   \item{gold}{Reserves of foreign exchange and gold ($), 2188}
#'   \item{externalDebt}{Debt - external ($), 2079}
#'   \item{homeStock}{Stock of direct foreign investment - at home ($), 2198}
#'   \item{abroadStock}{Stock of direct foreign investment - abroad ($), 2199}
#'   \item{elecProd}{Electricity - production (kWh), 2232}
#'   \item{elecCons}{Electricity - consumption (kWh), 2233}
#'   \item{elecExp}{Electricity - exports (kWh), 2234}
#'   \item{elecImp}{Electricity - imports (kWh), 2235}
#'   \item{elecCap}{Electricity - installed generating capacity (kW), 2236}
#'   \item{elecFossil}{Electricity - from fossil fuels (\% of total installed capacity), 2237}
#'   \item{elecNuc}{Electricity - from nuclear fuels (\% of total installed capacity), 2239}
#'   \item{elecHydro}{Electricity - from hydroelectric plants (\% of total installed capacity), 2238}
#'   \item{elecRenew}{Electricity - from other renewable sources (\% of total installed capacity), 2240}
#'   \item{oilProd}{Crude oil - production (bbl/day), 2241}
#'   \item{oilExp}{Crude oil - exports (bbl/day), 2242}
#'   \item{oilImp}{Crude oil - imports (bbl/day), 2243}
#'   \item{oilRes}{Crude oil - proved reserves (bbl), 2244}
#'   \item{petroProd}{Refined petroleum products - production (bbl/day), 2245}
#'   \item{petroCons}{Refined petroleum products - consumption (bbl/day), 2246}
#'   \item{petroExp}{Refined petroleum products - exports (bbl/day), 2247}
#'   \item{petroImp}{Refined petroleum products - imports (bbl/day), 2248}
#'   \item{gasProd}{Natural gas - production (cu M), 2249}
#'   \item{gasCons}{Natural gas - consumption (cu M), 2250}
#'   \item{gasExp}{Natural gas - exports (cu M), 2251}
#'   \item{gasImp}{Natural gas - imports (cu M), 2252}
#'   \item{gasRes}{Natural gas - proved reserves (cu M), 2253}
#'   \item{mainlines}{Telephones - main lines in use (mainlines in use), 2150}
#'   \item{cell}{Telephones - mobile cellular (cellphones), 2151}
#'   \item{netHosts}{Internet hosts (#), 2184}
#'   \item{netUsers}{Internet users (#), 2153}
#'   \item{airports}{Airports (#), 2053}
#'   \item{railways}{Railways (km), 2121}
#'   \item{roadways}{Roadways (km), 2085}
#'   \item{waterways}{Waterways (km), 2093}
#'   \item{marine}{Merchant marine (# of ships), 2108}
#'   \item{military}{Military expenditures (\% of GDP), 2034}
#' }
#'
#' @details These data were collected using the `mosaic::CIAdata()` function.
#' See the output of `mosaic::CIAdata()` and Internet search "CIA Factbook NNNN",
#' where NNNN is the 4-digit code used for indexing the data at the CIA.
#'
#' @source From the CIA World Factbook,
#' <https://www.cia.gov/library/publications/the-world-factbook/>
#' For package maintainers: The lines to construct the file are in `inst/datafixes.R`.
#'
#' @examples
#' data(CountryData)
#' str(CountryData)
"CountryData"


### CountryGroups ####

#' @title Membership in Country Groups
#'
#' @description A data frame listing countries with logical variables indicating whether
#' each country belongs to the G8, the G20, or the GGG.
#'
#' @docType data
#'
#' @usage data("CountryGroups")
#'
#' @format
#' \describe{
#'   \item{G8}{country belongs to G8}
#'   \item{G20}{country belongs to G20}
#'   \item{GGG}{country belongs to GGG (global governance group)}
#' }
#'
#' @details The country names are standardized to the CIA World Factbook names.
#' Each of the variables G8, G20, GGG is a logical variable. TRUE means the
#' country belongs to the corresponding group.
#'
#' @source <http://en.wikipedia.org/wiki/G8>,
#' <https://www.g20.org/about_g20/g20_members>,
#' <http://www.mfa.gov.sg/content/mfa/overseasmission/newyork/nyemb_statements/global_governance_group/2012/201209/press_20122809.html>
#'
#' @examples
#' data(CountryGroups)
#' str(CountryGroups)
"CountryGroups"


### DirectRecoveryGroups ####

#' @title Descriptions of the Direct Recovery Groups (DRGs) in the Medicare data.
#'
#' @description Provides the medical meaning of the DRG codes.
#'
#' @docType data
#'
#' @usage data("DirectRecoveryGroups")
#'
#' @format A data frame with 100 observations on the following 2 variables:
#' \describe{
#'   \item{drg}{a character string that looks like a number}
#'   \item{drgDefinition}{a text description of the DRG}
#' }
#'
#' @details This data table is related to `MedicareCharges` and `MedicareProviders`.
#'
#' @source Extracted from the highly repetitive table provided by the Centers
#' for Medicare and Medicaid Services. See
#' <http://www.cms.gov/Research-Statistics-Data-and-Systems/Statistics-Trends-and-Reports/Medicare-Provider-Charge-Data/Inpatient.html>
#'
#' @examples
#' head(DirectRecoveryGroups)
"DirectRecoveryGroups"


### HappinessIndex ####

#' @title World Happiness Report Data
#'
#' @description The United Nations Sustainable Development Solutions Network
#' releases a report giving several indices of "happiness" measured for each of
#' more than 150 countries. These data are from the 2013 report
#' (<http://unsdsn.org/resources/publications/world-happiness-report-2013/>).
#' Underlying the data are the results of Gallop World Polls — the country data
#' is presumably the aggregate of data from individual people, although how the
#' aggregate is made is uncertain to this writer.
#'
#' @docType data
#'
#' @usage data("HappinessIndex")
#'
#' @format A data frame with 156 observations on the following 13 variables:
#' \describe{
#'   \item{country}{name of the country}
#'   \item{region}{numerical code for a region of the world}
#'   \item{score}{The happiness index: a number from 0 to 10}
#'   \item{socialSupport}{A measure of having someone to count on}
#'   \item{freedom}{Perceived freedom to make life choices}
#'   \item{corruption}{Freedom from corruption}
#'   \item{donation}{}
#'   \item{generosity}{The generosity of people}
#'   \item{affectPos}{}
#'   \item{affectNeg}{}
#'   \item{happinessYesterday}{A presumably subjective measure of how happy the
#'   poll respondants were the day before the poll.}
#'   \item{gdpPerCapita}{In dollars}
#'   \item{lifeExpectancy}{The "healthy life expectancy" in years.}
#' }
#'
#' @details The healthy life expectancy (HALE) is a World Health Organization
#' measure of how long, on average, a person can be expected to live in good
#' health.
#'
#' The data were scraped from a PDF file released by the United Nations. A few
#' country names were changed to match those in `CountryData` (e.g., Myanmar ->
#' Burma). Not all of the `HappinessIndex` countries are in `CountryData`, and vice
#' versa.
#'
#' @source The World Happiness Report is at
#' <http://unsdsn.org/wp-content/uploads/2014/02/WorldHappinessReport2013_online.pdf>
#' The original data used to create `HappinessIndex` are at
#' <http://unsdsn.org/wp-content/uploads/2013/09/Chapter-2_online-appendix_9-5-13_final.pdf>
#'
#' @examples
#' data(HappinessIndex)
#' str(HappinessIndex)
"HappinessIndex"


### MedicareCharges ####

#' @title Charges to and Payments from Medicare
#'
#' @description These data for 2011, released in May 2013, describe how much
#' hospitals charged Medicare for various inpatient procedures, how many were
#' performed, and how much Medicare actually paid.
#'
#' @docType data
#'
#' @usage data("MedicareCharges")
#'
#' @format A data frame with 163065 observations on the following 5 variables:
#' \describe{
#'   \item{drg}{Code for the Direct Recovery Group: a character string that looks like a number.}
#'   \item{idProvider}{Provider ID: a numeric vector: it should be a factor.}
#'   \item{totalDischarges}{}
#'   \item{aveCharges}{}
#'   \item{avePayments}{}
#' }
#'
#' @details These data are part of a set with `DirectRecoveryGroups`, which
#' gives a description of the medical procedure associated with each DRG, and
#' `MedicareProviders`, which translates `idProvider` into a name, address, state,
#' Zip, etc.
#'
#' @source Data from the Centers for Medicare and Medicaid Services. See
#' <http://www.cms.gov/Research-Statistics-Data-and-Systems/Statistics-Trends-and-Reports/Medicare-Provider-Charge-Data/Inpatient.html>.
#'
#' @examples
#' data(MedicareCharges)
#' str(MedicareCharges)
"MedicareCharges"


### MedicareProviders ####

#' @title Medicare Providers
#'
#' @description Name and location data for the medicare providers in the
#' `MedicareCharges` data table.
#'
#' @docType data
#'
#' @usage data("MedicareProviders")
#'
#' @format A data frame with 3337 observations on the following 7 variables:
#' \describe{
#'   \item{idProvider}{a unique number assigned to each provider}
#'   \item{nameProvider}{Name of the provider. (text string)}
#'   \item{addressProvider}{Street address of the provider. (text string)}
#'   \item{cityProvider}{The name of the city in which the provider is located. (factor)}
#'   \item{stateProvider}{The two-letter postal code of the state in which the provider is located. (factor)}
#'   \item{zipProvider}{The provider's ZIP code. (factor)}
#'   \item{referralRegion}{An identifier for the region serviced by the provider.}
#' }
#'
#' @details This data table is related to `MedicareCharges` data.
#'
#' @source Extracted from the highly repetitive table provided by the Centers
#' for Medicare and Medicaid Services. See
#' <http://www.cms.gov/Research-Statistics-Data-and-Systems/Statistics-Trends-and-Reports/Medicare-Provider-Charge-Data/Inpatient.html>
#'
#' @examples
#' head(MedicareProviders)
#' str(MedicareProviders)
"MedicareProviders"


### MigrationFlows ####

#' @title Human Migration between Countries
#'
#' @description The number of people who moved in from one country to another.
#' Data are provided for 1960, 1970, 1980, 1990, and 2000. There are separate
#' counts for males and females.
#'
#' @docType data
#'
#' @usage data("MigrationFlows")
#'
#' @format A data frame with 107184 observations on the following 8 variables:
#' \describe{
#'   \item{sex}{a factor with levels Female and Male}
#'   \item{destcode}{three letter country codes indicating the destination of the migrants}
#'   \item{origincode}{three letter country codes indicating where the migrants left}
#'   \item{Y2000}{Migration in year 2000. The value is the number of people
#'   (males and females separately) who migrated from the origin country to the destination country.}
#'   \item{Y1990}{Migration in year 1990}
#'   \item{Y1980}{Migration in year 1980}
#'   \item{Y1970}{Migration in year 1970}
#'   \item{Y1960}{Migration in year 1960}
#' }
#'
#' @source The World Bank's Global Bilateral Migration Database:
#' \url{http://data.worldbank.org/data-catalog/global-bilateral-migration-databas}
#'
#' @examples
#' data(MigrationFlows)
#' str(MigrationFlows)
"MigrationFlows"







