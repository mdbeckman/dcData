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
#' web site: http://www.ssa.gov/oact/babynames/names.zip
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
#' https://www.cia.gov/library/publications/the-world-factbook/fields/2153.html
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
#' https://www.cia.gov/library/publications/the-world-factbook/
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
#' @source http://en.wikipedia.org/wiki/G8,
#' https://www.g20.org/about_g20/g20_members ,
#' http://www.mfa.gov.sg/content/mfa/overseasmission/newyork/nyemb_statements/global_governance_group/2012/201209/press_20122809.html
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
#' http://www.cms.gov/Research-Statistics-Data-and-Systems/Statistics-Trends-and-Reports/Medicare-Provider-Charge-Data/Inpatient.html
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
#' (http://unsdsn.org/resources/publications/world-happiness-report-2013/ ).
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
#' http://unsdsn.org/wp-content/uploads/2014/02/WorldHappinessReport2013_online.pdf
#' The original data used to create `HappinessIndex` are at
#' http://unsdsn.org/wp-content/uploads/2013/09/Chapter-2_online-appendix_9-5-13_final.pdf
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
#' http://www.cms.gov/Research-Statistics-Data-and-Systems/Statistics-Trends-and-Reports/Medicare-Provider-Charge-Data/Inpatient.html .
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
#' http://www.cms.gov/Research-Statistics-Data-and-Systems/Statistics-Trends-and-Reports/Medicare-Provider-Charge-Data/Inpatient.html
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
#' http://data.worldbank.org/data-catalog/global-bilateral-migration-databas
#'
#' @examples
#' data(MigrationFlows)
#' str(MigrationFlows)
"MigrationFlows"


### Minneapolis2013 ####

#' @title Ballots in the 2013 Mayoral election in Minneapolis
#'
#' @description The choices marked on each (valid) ballot for the election,
#' which was run using a rank-choice, instant runoff system.
#'
#' @docType data
#'
#' @usage data("Minneapolis2013")
#'
#' @format A data frame with 80101 observations on the following 5 variables. All are stored as character strings.
#' \describe{
#'   \item{Precinct}{Precincts are sub-divisions within Wards}
#'   \item{First}{The voter's first choice}
#'   \item{Second}{The voter's second choice}
#'   \item{Third}{The voter's third choice}
#'   \item{Ward}{The city is divided spatially into districts or 'wards'. These
#'   are further subdivided into precincts}
#' }
#'
#' @details Ballot information for the 2013 Minneapolis Mayoral election, which
#' was run as a rank-choice election. In rank-choice, a voter can indicate
#' first, second, and third choices. If a voter's first choice is eliminated
#' (by being last in the count across voters), the second choice is promoted to
#' that voter's first choice, and similarly third -> second. Eliminations are
#' done successively until one candidate has a majority of the first-choice
#' votes.
#'
#' @source Ballot data from the Minneapolis city government:
#' https://vote.minneapolismn.gov/results-data/election-results/
#'
#' @references
#' Description of ranked-choice voting: http://vote.minneapolismn.gov/rcv/index.htm
#'
#' A Minnesota Public Radio story about the election ballot tallying process:
#' http://minnesota.publicradio.org/display/web/2013/11/22/politics/ranked-choice-vote-count-programmers
#'
#' The Wikipedia article about the election:
#' http://en.wikipedia.org/wiki/Minneapolis_mayoral_election,_2013
#'
#' @examples
#' data(Minneapolis2013)
#' str(Minneapolis2013)
"Minneapolis2013"


### Minneapolis2017 ####

#' @title Ballots in the 2017 Mayoral election in Minneapolis
#'
#' @description The choices marked on each (valid) ballot for the election,
#' which was run using a rank-choice, instant runoff system.
#'
#' @docType data
#'
#' @usage data("Minneapolis2017")
#'
#' @format A data frame with 105,928 observations on the following 5 variables:
#' \describe{
#'   \item{precinct}{Precincts are sub-divisions within `wards`}
#'   \item{first}{The voter's first choice}
#'   \item{second}{The voter's second choice}
#'   \item{third}{The voter's third choice}
#'   \item{ward}{The city is divided spatially into districts or 'wards'. These
#'   are further subdivided into precincts}
#' }
#'
#' @details Ballot information for the 2017 Minneapolis Mayoral election, which
#' was run as a rank-choice election. In rank-choice, a voter can indicate
#' first, second, and third choices. If a voter's first choice is eliminated
#' (by being last in the count across voters), the second choice is promoted to
#' that voter's first choice, and similarly third -> second. Eliminations are
#' done successively until one candidate has a majority of the first-choice
#' votes. For additional detail, see
#' https://vote.minneapolismn.gov/ranked-choice-voting/details/
#'
#' @source Ballot data from the Minneapolis city government:
#' https://vote.minneapolismn.gov/results-data/election-results/2017/mayor-data/
#'
#' @examples
#' data(Minneapolis2017)
#' str(Minneapolis2017)
"Minneapolis2017"



### NCHS ####

#' @title Health Statistics Data 1999-2004
#'
#' @description These are survey data collected by the US National Center for
#' Health Statistics (NCHS). Each year, approximately 5,000 individuals are
#' interviewed in their homes. The data cover 1999-2004.
#'
#' Note that the NHANES package provides data from 2009-2012, including more
#' health, life-style, and socio-economic variables
#'
#' @docType data
#'
#' @usage data("NCHS")
#'
#' @format A data frame with 31126 observations on the following 31 variables:
#' \describe{
#'   \item{sex}{"male" or "female"}
#'   \item{age}{years}
#'   \item{pregnant}{yes" or "no"}
#'   \item{ethnicity}{Mexican American, Other Hispanic, Non-Hispanic White,
#'   Non-Hispanic Black, or Other/Multi}
#'   \item{death}{"alive", "cardiovascular death" or "other death"}
#'   \item{followup}{months of follow up (for mortality data)}
#'   \item{smoker}{"yes" or "no"}
#'   \item{diabetic}{"yes" or "no"}
#'   \item{height}{in meters}
#'   \item{weight}{in kilograms}
#'   \item{waist}{waist circumference (meters)}
#'   \item{wci}{the proposed body shape index}
#'   \item{bmi}{body mass index}
#'   \item{ptfat}{percent trunk fat}
#'   \item{tfat}{mass of trunk fat}
#'   \item{lfat}{limb fat}
#'   \item{llean}{limb lean tissue}
#'   \item{lbmi}{lean-tissue only BMI}
#'   \item{fbmi}{fat-only BMI}
#'   \item{bbmi}{bone BMI}
#'   \item{pfat}{percent fat}
#'   \item{bmd}{bone mineral density}
#'   \item{fmhm_other}{Framingham risk score}
#'   \item{hdl}{HDL cholesterol}
#'   \item{chol}{cholesterol (presumably, LDL)}
#'   \item{bps}{systolic blood pressure, mmHg}
#'   \item{bpd}{diastolic blood pressure, mmHg}
#'   \item{income}{ratio of family income to poverty threshold. 5 indicates a
#'   ratio greater than or equal to 5}
#'   \item{pop_weight}{population weight, for adding up over the US population}
#'   \item{psu}{primary sampling unit}
#'   \item{stratum}{sampling stratum}
#' }
#'
#' @source These data were assembled from NCHS/NHANES 1999-2004 sources by
#' Dr. Nir Krakauer at City College of New York.
#'
#' @seealso The `NHANES` package available through CRAN.
#'
#' @examples
#' data(NCHS)
#' str(NCHS)
"NCHS"


### NCI60 ####

#' @title Gene expression in cancer.
#'
#' @description The data come from a National Cancer Institute study of gene
#' expression in human cancer cell lines representing leukemia, melanoma and
#' cancers of the lung, colon, brain, ovary, breast, prostate, and kidney.
#'
#' The expression data, NCI60 is a dataframe of 41078 gene probes (rows) and
#' 60 cell lines (columns). The first column, Probe gives the name of the
#' Agilent microarray probe. Each of the remaining columns is named for a cell
#' line. The value is the log-2 expression associated with that probe for the
#' cell line.
#'
#' `NCI60cells` gives information about each cell line.
#'
#' @docType data
#'
#' @usage data("NCI60")
#'
#' @format A data frame with 41,078 observations on 61 variables representing
#' the `probe` and the 60 cell lines drawn from various sorts of cancer.
#'
#' @source See https://dtp.cancer.gov/discovery_development/nci-60/
#'
#' @references
#' Staunton et al.(http://www.pnas.org/content/98/19/10787.full
#'
#' D.T. Ross et al. (2000) Nature Genetics, 24(3):227-234
#' http://discover.nci.nih.gov/host/2000_systematic_abstract.jsp
#'
#' @seealso `NCI60cells`
#'
#' @examples
#' data(NCI60)
#' str(NCI60)
"NCI60"


### NCI60cells ####

#' @title Cell Line descriptions in the NCI-60 dataset
#'
#' @description NCI60cells gives information about the cell-line tissue and the
#' person from whom the sample was collected.
#'
#' @docType data
#'
#' @usage data("NCI60cells")
#'
#' @format A data frame with 60 observations on the following 12 variables:
#' \describe{
#'   \item{cellLine}{Name from NCI-60 human tumor cell lines screen}
#'   \item{tissue}{The cancer tissue from which the cell line originated:
#'   Breast, CNS, Colon, Leukemia, Melanoma, Non-Small Cell Lung, Ovarian,
#'   Prostate, and Renal}
#'   \item{age}{of the cell line donor}
#'   \item{sex}{of the cell line donor}
#'   \item{ploidy}{the number of sets of chromosomes in the cell}
#'   \item{prior.treatment}{treatment of the donor}
#'   \item{epithelial}{is the cell of epithelial origin}
#'   \item{histology}{}
#'   \item{p53}{status of p53 protein believed to help regulate gene expression:
#'   mutated "MT", wild-type "WT", "?" }
#'   \item{mdr}{multidrug resistence (numeric)}
#'   \item{source}{information about where the cells were collected from}
#'   \item{doublingtime}{numeric}
#' }
#'
#' @details These are the cell-line descriptions corresponding to the columns
#' in the `NCI60` expression dataset.
#'
#' @seealso `NCI60`
#'
#' @examples
#' data(NCI60cells)
#' str(NCI60cells)
"NCI60cells"


### OrdwayBirds ####

#' @title Birds captured and released at Ordway, complete and uncleaned
#'
#' @description The historical record of birds captured and released at the
#' Katharine Ordway Natural History Study Area, a 278-acre preserve in Inver
#' Grove Heights, Minnesota, owned and managed by Macalester College.
#'
#' @docType data
#'
#' @usage data("OrdwayBirds")
#'
#' @format A data frame with 15,829 observations on the following 26 variables:
#' \describe{
#'   \item{bogus}{}
#'   \item{Timestamp}{indicates when the data were entered into an electronic
#'   record, not anything about the bird being described}
#'   \item{Year}{year of capture}
#'   \item{Day}{day of capture}
#'   \item{Month}{month of capture}
#'   \item{CaptureTime}{time of capture}
#'   \item{SpeciesName}{}
#'   \item{Sex}{}
#'   \item{Age}{}
#'   \item{BandNumber}{}
#'   \item{TrapID}{}
#'   \item{Weather}{}
#'   \item{BandingReport}{}
#'   \item{RecaptureYN}{}
#'   \item{RecaptureMonth}{}
#'   \item{RecaptureDay}{}
#'   \item{Condition}{}
#'   \item{Release}{}
#'   \item{Comments}{}
#'   \item{DataEntryPerson}{}
#'   \item{Weight}{}
#'   \item{WingChord}{}
#'   \item{Temperature}{}
#'   \item{RecaptureOriginal}{}
#'   \item{RecapturePrevious}{}
#'   \item{TailLength}{}
#' }
#'
#' @details There are many extraneous levels of variables such as species. Part
#' of the purpose of this data set is to teach about data cleaning.
#'
#' @source Jerald Dosch, Dept. of Biology, Macalester College: the manager of the Study Area.
#'
#' @seealso `OrdwaySpeciesNames`
#'
#' @examples
#' data(OrdwayBirds)
#' str(OrdwayBirds)
"OrdwayBirds"



### OrdwaySpeciesNames ####

#' @title Corrected Species Names for the Ordway Birds
#'
#' @description This data frame lists all the species name that appear in
#' `OrdwayBirds`. In many cases, the species name was mis-spelled in the
#' original. As a result, many birds are listed as separate species even
#' though, in reality, they all belong to the same species. For each
#' potentially mis-spelled species name, this table gives a standardized name.
#'
#' @docType data
#'
#' @usage data("OrdwaySpeciesNames")
#'
#' @format A data frame with 265 observations on the following 2 variables:
#' \describe{
#'   \item{SpeciesName}{The original spelling, or misspelling, of a bird species.}
#'   \item{SpeciesNameCleaned}{Corrected spelling (or NA if the original was not identifiable.)}
#' }
#'
#' @source Daniel Kaplan and students in a 2013 Data and Computing Fundamentals
#' class at Macalester College (Saint Paul, MN) read through original names
#' in `OrdwayBirds` and typed corrected spelling shown in `SpeciesNameCleaned`.
#'
#'
#' @seealso `OrdwayBirds`
#'
#' @examples
#' data(OrdwaySpeciesNames)
#' str(OrdwaySpeciesNames)
"OrdwaySpeciesNames"



### RegisteredVoters ####

#' @title A sample of the voter registration list for Wake County, North
#' Carolina in Fall 2010.
#'
#' @description These are data from the Wake County Board of Elections. As so
#' often happens, the web sites with the documentation and data are no longer
#' current.
#'
#' @docType data
#'
#' @usage data("RegisteredVoters")
#'
#' @format A data frame with 10,000 observations on the following 19 variables:
#' \describe{
#'   \item{gender}{M = male, F = female, U = unknown}
#'   \item{party}{Political affiliation: DEM = Democratic, LIB = Libertarian, REP = Republican, UNA = Unaffiliated}
#'   \item{Age}{age in years}
#'   \item{race}{race: A = Asian, B = black or African American, I = American Indian or Alaska Native,
#'   M = More than one race, O = Other, U = Undesignated, W = White}
#'   \item{voter_reg_num}{Unique serial number for each voter}
#'   \item{last_name}{Voter's last name}
#'   \item{first_name}{Voter's first name}
#'   \item{midl_name}{Voter's middle name}
#'   \item{name_sufx}{Suffix, if any, on the voter's name}
#'   \item{mail_city}{Component of voter's mailing address}
#'   \item{mail_state_cd}{Component of voter's mailing address}
#'   \item{mail_street}{Component of voter's mailing address}
#'   \item{mail_zip_code}{Component of voter's mailing address}
#'   \item{registr_dt}{Component of voter's mailing address}
#'   \item{res_city}{Component of voter's mailing address}
#'   \item{res_state_cd}{Component of voter's mailing address}
#'   \item{res_unit_num}{Component of voter's mailing address}
#'   \item{res_zip_code}{Component of voter's mailing address}
#'   \item{voter_status}{Status of the voter}
#' }
#'
#' @details For additional fields, see the original documentation at
#' http://msweb03.co.wake.nc.us/bordelec/Waves/boedatadescription.pdf
#'
#' @source The data file is publicly available from the Wake County (NC) Board
#' of Elections. http://msweb03.co.wake.nc.us/bordelec/Waves/WavesDownload.asp.
#' It's in a Windows self-extracting format. Prof. Shilad Sen of Macalester
#' College (Saint Paul, MN) reformatted the data to accompany the DataComputing
#' book.
#'
#' The full data set, containing 583,092 records, is available at
#' http://www.mosaic-web.org/go/Repository/DannyKaplan/WakeCountyBOE.Rdata
#' You can access it by downloading the file, then loading it into your R
#' session. The data frame is `WakeCountyBOE`.
#'
#' @examples
#' data(RegisteredVoters)
#' str(RegisteredVoters)
"RegisteredVoters"


### WorldCities ####

#' @title Cities and their populations
#'
#' @description A list of world cities accomanied by location information.
#'
#' @docType data
#'
#' @usage data("WorldCities")
#'
#' @format A data frame with 23018 observations on the following 10 variables:
#' \describe{
#'   \item{code}{The ISO (?) city code}
#'   \item{name}{Name of the city}
#'   \item{latitude}{location in degrees}
#'   \item{longitude}{location in degrees}
#'   \item{country}{Two letter country code}
#'   \item{countryRegion}{A numerical region}
#'   \item{population}{}
#'   \item{regionCode}{ISO (?) Code}
#'   \item{region}{Name of the region}
#'   \item{date}{Date estimate made}
#' }
#'
#' @examples
#' data(WorldCities)
#' str(WorldCities)
"WorldCities"


### ZipDemography ####

#' @title Demographic information for most US ZIP Codes (Postal Codes)
#'
#' @description Data on the population in each of ZIP code region.
#'
#' @docType data
#'
#' @usage data("ZipDemography")
#'
#' @format A data frame with 42741 observations on the following 44 variables:
#' \describe{
#'   \item{Totalpopulation}{}
#'   \item{Male}{}
#'   \item{Female}{}
#'   \item{MedianAge}{}
#'   \item{Under5years}{}
#'   \item{X18yearsandover}{}
#'   \item{X65yearsandover}{}
#'   \item{Onerace}{}
#'   \item{White}{}
#'   \item{BlackorAfricanAmerican}{}
#'   \item{AmericanIndianandAlaskaNative}{}
#'   \item{Asian}{}
#'   \item{NativeHawaiianandOtherPacificIslander}{}
#'   \item{Someotherrace}{}
#'   \item{Twoormoreraces}{}
#'   \item{HispanicorLatinoofanyrace}{}
#'   \item{AverageHouseholdSize}{}
#'   \item{Averagefamilysize}{}
#'   \item{Totalhousingunits}{}
#'   \item{Occupiedhousingunits}{}
#'   \item{Owneroccupiedhousingunits}{}
#'   \item{Renteroccupiedhousingunits}{}
#'   \item{Vacanthousingunits}{}
#'   \item{Population25yearsandover}{}
#'   \item{Highschoolgraduateorhigher}{}
#'   \item{Bachelorsdegreeorhigher}{}
#'   \item{Civilianveterans}{}
#'   \item{Disabilitystatuspopulation21to64years}{}
#'   \item{Foreignborn}{}
#'   \item{Nowmarriedpopulation15yearsandover}{}
#'   \item{SpeakalanguageotherthanEnglishathome5yearsandover}{}
#'   \item{Inlaborforcepopulation16yearsandover}{}
#'   \item{Meantraveltimetoworkinminutespopulation16yearsandolder}{}
#'   \item{Medianhouseholdincomedollars}{}
#'   \item{Medianfamilyincomedollars}{}
#'   \item{Percapitaincomedollars}{}
#'   \item{Familiesbelowpovertylevel}{}
#'   \item{Individualsbelowpovertylevel}{}
#'   \item{Singlefamilyowneroccupiedhomes}{}
#'   \item{Medianvaluedollars}{}
#'   \item{Medianofselectedmonthlyownercosts}{}
#'   \item{WithaMortgage}{}
#'   \item{Notmortgaged}{}
#'   \item{ZIP}{}
#' }
#'
#'
#' @examples
#' data(ZipDemography)
#' str(ZipDemography)
"ZipDemography"


### ZipGeography ####

#' @title Geographic information by US Zip Codes (Postal Codes)
#'
#' @description Information about the location, area, and housing units in each ZIP code area.
#'
#' @docType data
#'
#' @usage data("ZipGeography")
#'
#' @format A data frame with 42741 observations on the following 13 variables:
#' \describe{
#'   \item{State}{}
#'   \item{Population}{the population of the ZIP area}
#'   \item{County}{the name of the county to which the ZIP area belongs}
#'   \item{HousingUnits}{}
#'   \item{LandArea}{}
#'   \item{WaterArea}{}
#'   \item{CityName}{}
#'   \item{AreaCode}{}
#'   \item{Timezone}{}
#'   \item{Latitude}{}
#'   \item{Longitude}{}
#'   \item{PostOfficeName}{the name of the post office serving the ZIP}
#'   \item{ZIP}{character vector for the ZIP code area}
#' }
#'
#' @examples
#' data(ZipGeography)
#' str(ZipGeography)
"ZipGeography"



