## siminf, a framework for stochastic disease spread simulations
## Copyright (C) 2015  Pavol Bauer
## Copyright (C) 2015  Stefan Engblom
## Copyright (C) 2015  Stefan Widgren
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

##' Run siminf stochastic simulation algorithm
##'
##' @rdname run-methods
##' @docType methods
##' @param model The siminf model to run.
##' @param threads Number of threads. Default is NULL, i.e. to use the
##' number of available processors.
##' @param seed Random number seed. Default is NULL, i.e. to use a
##' time-seed.
##' @return \code{siminf_model} with result from simulation.
setGeneric("run",
           signature = "model",
           function(model,
                    threads  = NULL,
                    seed     = NULL) standardGeneric("run"))

##' Susceptible
##'
##' Extracts the number of susceptible
##' @rdname susceptible-methods
##' @docType methods
##' @param model The \code{model} to extract the susceptible from
##' @param ... Additional arguments affecting the measure
##' @param age The age category to extract
##' @keywords methods
##' @export
setGeneric("susceptible",
           function(model, ...) standardGeneric("susceptible"))

##' Infected
##'
##' Extracts the number of infected
##' @rdname infected-methods
##' @docType methods
##' @param model The \code{model} to extract the infected from
##' @param ... Additional arguments affecting the measure
##' @param age The age category to extract
##' @keywords methods
##' @export
setGeneric("infected",
           function(model, ...) standardGeneric("infected"))

##' Prevalence
##'
##' Calculate the proportion infected individuals
##' @rdname prevalence-methods
##' @docType methods
##' @param model The \code{model} to calculated the prevalence from
##' @param ... Additional arguments affecting the measure
##' @keywords methods
##' @export
setGeneric("prevalence",
           function(model, ...) standardGeneric("prevalence"))