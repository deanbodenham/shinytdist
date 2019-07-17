# R Shiny *t*-distribution

Example using R Shiny to show *t*-distribution for different degrees of freedom, and comparing it to a standard normal distribution.

One can see how increasing the degrees of freedom makes the probability density function of the *t*-distribution close to that of the 
standard normal distribution.


## Different versions

There are four different versions of the app:

 1. `t_simple` is the simplest version, with a slider on the left-hand side.
 2. `t_latex` is the same as 1. but with LaTeX equations with the probability density functions.
 3. `t_bottom` rearranges the outputs to put the slider and equations at the bottom. Also modifies the legend slightly
    to make the text larger and include the degrees of freedom in the legend.
 4. `t_bottom2` is the same as 3., but allows the degrees of freedom to be real-valued (or, at least an integer divided by 10).
 5. `t_bottom2_all_in_one` is the same as 4., but now everything is contained in the single file `driver.R`.


## Running a Shiny app

First, make sure that the `shiny` package is installed in R:
```
install.packages("shiny")
```


In each folder (except `t_bottom2_all_in_one`), there are three R files:

 * `ui.R`
 * `server.R`
 * `driver.R`


In an R session, simply run the driver script as follows:
```
source("driver")
driver()
```
