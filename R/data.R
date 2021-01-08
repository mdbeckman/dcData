#' Names of children as recorded by the US Social Security Administration.
#'
#' The US Social Security Administration provides yearly lists of names given
#' to babies. These data combine the yearly lists.
#'
#' `BabyNames` is the raw data from the SSA. The case is a year-name-sex, for
#' example: Jane F 1922. The count is the number of children of that sex given
#' that name in that year. Names assigned to fewer than five children of one
#' sex in any year are not listed, presumably out of privacy concerns.
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



#' Geographic locations of countries
#'
#' Gives the latitude and longitude for many countries. A single point — the
#' centroid of the country's boundaries — is given. Countries are identified
#' by English name and by the ISO A3 code.
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

