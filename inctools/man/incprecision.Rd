% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/precision.R
\name{incprecision}
\alias{incprecision}
\title{Sample size or precision calculation}
\usage{
incprecision(I, RSE_I, PrevH, CR, MDRI, RSE_MDRI, FRR, RSE_FRR, BigT = 730,
  DE_H = 1, DE_R = 1, n = "out", step = 5)
}
\arguments{
\item{I}{Expected Incidence.}

\item{RSE_I}{Relative Standard Error of Incidence Estimate. If this is the desired output, set to "out".}

\item{PrevH}{Prevalence of HIV.}

\item{CR}{Coverage rate: probability (0-1) of being tested for recency when positive for HIV.}

\item{MDRI}{mean duration of recent infection in days (vector/integer).}

\item{RSE_MDRI}{Relative standard error of MDRI (vector/integer).}

\item{FRR}{False recent rate (vector/integer).}

\item{RSE_FRR}{Relative standard error of FRR (vector/integer).}

\item{BigT}{post-infection time cut-off for true vs. false recency. Default is 730 days.}

\item{DE_H}{Design effect of HIV prevalence test (vector/integer).}

\item{DE_R}{Design effect of recency test (vector/integer).}

\item{n}{Sample Size: Set to a hypothetical value if the desired output is RSE_I, othewise set to "out" to obtain required sample size.}

\item{step}{number of steps between minimum I and maximum I in the calculation of a range of output.}
}
\value{
Either sample size necessary for a given precision under a given set of testing characteristics and a hypothetical prevalence/incidence scenario, or precision under a particular sample size scenario, with a given hypothetical prevalence/incidence scenario.
}
\description{
Sample size or precision calculation
}
\details{
The package contains long form documentation in the form of vignettes that cover the use of the main fucntions. Use browseVignettes(package="inctools") to access them.

This function summarizes performance of a recent infection test into a standard error of the incidence estimate, given the
estimated test properties and hypothetical survey context or the sample size necessary for a given level of precision.

Up to two arguments can be specified as ranges, with the input parameter `step` specifying the number of increments
between the endpoints of the two ranges supplied under the argument name. This yields output for each step.
See the second and third example below
for an illustration of this output.

Either the argument RSE_I or the argument n must be set to "out".
}
\examples{
incprecision(I = 0.015, RSE_I = 0.25, PrevH = 0.2, CR = 1,
MDRI = 200, RSE_MDRI = 0.05, FRR = 0.01, RSE_FRR = 0.2,
BigT = 730, DE_H = 1.1, DE_R = 1, n = 'out')

incprecision(I = c(0.015,0.02), RSE_I = 0.25, PrevH = c(0.10,0.20),
CR = 1, MDRI = 200, RSE_MDRI = 0.05, FRR = 0.01, RSE_FRR = 0.2,
BigT = 700, DE_H = 1, DE_R = 1, n = 'out', step = 5)

incprecision(I = 0.017, RSE_I = 'out', PrevH = c(0.10,0.20),
CR = 1, MDRI = 211, RSE_MDRI = 0.05, FRR = 0.009, RSE_FRR = 0.2,
BigT = 720, n = 5000, step = 5)
}

