#convert temperature f to c 

airtemps <- c(212, 30.3, 78, 32) #air temps in celsius
#airtemps is a vector

celsius1 <- (airtemps[1]-32)*5/9 #take first value in the airtemps object [1]
celsius2 <- (airtemps[2]-32)*5/9
celsius3 <- (airtemps[3]-32)*5/9


#' convert fahr temp to celsius
#'
#'hats how help pages get generated, whats in here appears exactly as the help page
#'any additional sentences here get as additonal sentences in the description of the help page
#' #the different parts like param, return get all specific sections in the help page
#' 
#' @param fahr temperature in fahr
#'
#' @return temp in c
#' @export #make function available
#'
#' @examples #examples how to use the function, typically sef-contained
#' 
#' oxygen has much more option than the skeleton
#' but skeleton is the absolute minimum/the start
#' skeleton forces you to get through the whole function and write it down



fahr_to_celsius <- function(fahr){
  celsius <- (fahr - 32)*5/9
  return(celsius) #what gets out of the function
} 

#functions are like variables or values assigned w assignment operator
#in function definition () comes parameter, what the function needs to conduct its operations
# {} is function body comes what the function operates on

celsius2 <- fahr_to_celsius(airtemps[1])
celsius4 <- fahr_to_celsius(airtemps[4])

#reverse operation

celsius_to_fahr <- function(celsius){
  fahr <- (celsius*9/5) + 32 #values are not exposed to GLOBAL environment
  return(fahr) #what gets out of the function
} 

#test the function defintion

airtemps_c <- fahr_to_celsius(airtemps) #creates a vector
airtemps_f <- celsius_to_fahr(airtemps_c)

#functions should NOT depend on variables that are in the environment
#bc function should be reusable

convert_temps <- function(fahr){ #instead of vector i can return a list of different values
  celsius <- (fahr-32)*5/9
  kelvin <- celsius + 273.15
  temps <- data.frame(fahr = fahr,
                      celsius = celsius,
                      kelvin = kelvin)
  return(temps)
}

#dataframe is a NAMED LIST 
#where the values in the list have 1. the same length and 2. each is named
#to create the function i have to run it: (highlighting cursor on function definiton + ctrl + enter)

temps_all <- convert_temps(airtemps)