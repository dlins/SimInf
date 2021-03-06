% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllGenerics.R, R/SISe.R, R/SISe3.R, R/SISe3_sp.R, R/SISe_sp.R
\docType{methods}
\name{infected}
\alias{infected}
\alias{infected,SISe-method}
\alias{infected,SISe3-method}
\alias{infected,SISe3_sp-method}
\alias{infected,SISe_sp-method}
\title{Infected}
\usage{
infected(model, ...)

\S4method{infected}{SISe}(model, i = NULL, by = 1, ...)

\S4method{infected}{SISe3}(model, age = 1:3, i = NULL, by = 1, ...)

\S4method{infected}{SISe3_sp}(model, age = 1:3, i = NULL, by = 1, ...)

\S4method{infected}{SISe_sp}(model, i = NULL, by = 1, ...)
}
\arguments{
\item{model}{The \code{model} to extract the infected from}

\item{...}{Additional arguments affecting the measure}

\item{i}{Indices specifying the nodes to include when extracting
the number of infected. Default is NULL, which includes all nodes.}

\item{by}{The number to increment the sequence of time points
starting from 1. Default is 1, which gives the number of
infected at every time point.}

\item{age}{For models with age categories, the age category to
extract.}
}
\description{
Extracts the number of infected
}
\examples{
## Create a 'SISe' demo model with 5 nodes and initialize
## it to run over 10 days.
model <- demo_model(nodes = 5, days = 10, model = "SISe")

## Run the model and save the result
result <- run(model)

## Extract the number of infected individuals in each
## node after each time step in the simulation
infected(result)

## Extract the number of infected individuals in the
## first node after each time step in the simulation
infected(result, i = 1)

## Extract the number of infected individuals in the
## first and third node after each time step in the simulation
infected(result, i = c(1, 3))

## Extract the number of infected individuals in the first
## and third node after every other time step in the simulation
infected(result, i = c(1, 3), by = 2)

## Create a 'SISe3' demo model with 5 nodes and initialize
## it to run over 10 days.
model <- demo_model(nodes = 5, days = 10, model = "SISe3")

## Run the model and save the result
result <- run(model)

## Extract the sum all of infected individuals in all age
## categories in each node after each time step in the simulation
infected(result)

## Extract the number of infected individuals in the first age
## category in each node after each time step in the simulation
infected(result, age = 1)

## Extract the sum of infected individuals in the first and
## second age category in each node after each time step in
## the simulation
infected(result, age = c(1, 2))

## Extract the number of infected individuals in the first age
## category in the first and third node after each time step in
## the simulation
infected(result, i = c(1, 3), age = 1)
}
\keyword{methods}

