% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/containment-and-band-creation.R
\name{create_delta_ball_structure}
\alias{create_delta_ball_structure}
\title{create the delta ball associated with points}
\usage{
create_delta_ball_structure(
  data_points,
  data_columns = NULL,
  .lower_simplex_project = TRUE
)
}
\arguments{
\item{data_points}{points to create the delta ball structure from}

\item{data_columns}{columns of data.frame that relate to the point's
coordinates in euclidean space. This should be at least 3 columns (else it
doesn't really make sense to use this function). The input should look like
something like \code{c(S,I,R)} or \code{c("S", "I", "R")}. If the input is
\code{NULL} this function will treat this like
\code{\link[dplyr:everything]{dplyr::everything()}}.}

\item{.lower_simplex_project}{boolean, if data points should be projected to a simplex
and then to the lower dimensional simplex (for this package, this should
always be done)}
}
\value{
a \code{delta_ball_structure} object, that is a data frame similar to
data_points (but with out \code{data_columns} columns) and distinct points.
This object also has an \code{delta} attribute which contains the delta
defining the delta ball.
}
\description{
create the delta ball associated with points
}
\examples{
library(dplyr)
delta_ball_cb <- EpiCompare::pomp_df \%>\%
  filter(.id <= 10) \%>\%
  arrange(time) \%>\% # just to be safe
  select(-time, -H, -cases) \%>\%
  group_by(.id) \%>\%
  grab_top_depth_filaments(conf_level = .9) \%>\%
  create_delta_ball_structure() #data_columns = c(S,I,R)
}
