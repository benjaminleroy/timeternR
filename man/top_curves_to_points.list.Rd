% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/distance-depth.R
\name{top_curves_to_points.list}
\alias{top_curves_to_points.list}
\title{Pull the points from the top (1-alpha)\% percent of curves (LIST)}
\usage{
\method{top_curves_to_points}{list}(
  x,
  alpha,
  tidy_dm,
  quantile_func = distance_depth_function,
  x_names_df,
  ...
)
}
\arguments{
\item{x}{list containing curves, with index ordering associated
with the \code{x_names_df} and \code{rownames} of \code{tidy_dm}}

\item{alpha}{the proportion of curves to be removed before presenting all the
points together. Takes value in [0, 1.0].}

\item{tidy_dm}{a \code{tidy_dist_mat} distance matrix}

\item{quantile_func}{function to calculate quantiles via the distance_matrix,
we now expect this function to handle \code{tidy_dist_mat} objects and have
a parameter called \code{df_out} which we can set as true. See
\code{distance_depth_function.tidy_dist_mat} for an example.}

\item{x_names_df}{group structure associated with the ordering of the items
in the list \code{x}. Assume the naming structure for \code{tidy_dm} is
the same as this data frame (can have different ordering).}

\item{...}{additional parameters to be passed to the \code{quantile_func}.
Please also see details for more information.}
}
\value{
data frame from curves of the top values associated with the
  \code{quantile_func}
}
\description{
pulling out data points from curves that are ranked highest based on quantile
function.
}
