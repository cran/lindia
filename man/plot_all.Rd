% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_all.R
\name{plot_all}
\alias{plot_all}
\title{Plot all given plots in a square matrix form.}
\usage{
plot_all(plots, ncol = NA, max.per.page = NA)
}
\arguments{
\item{plots}{a list of plots}

\item{ncol}{numeric; the number of column that the arranged grid need to be.
defaults to fitting all plots in square matrix}

\item{max.per.page}{numeric; maximum number of plots allowed in one page.}
}
\value{
plots in a given list arrangeed using gridExtra
}
\description{
Plot all given plots in a square matrix form.
}
\examples{
         library(MASS)
         data(Cars93)
         # a regression with categorical variable
         cars_lm <- lm(Price ~ Passengers + Length + RPM + Origin, data = Cars93)
         plots <- gg_diagnose(cars_lm, plot.all = FALSE)
         names(plots)
         selected.plots <- plots[-c(2, 5)]
         plot_all(selected.plots)
         
}
