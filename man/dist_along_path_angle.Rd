% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/distance-between.R
\name{dist_along_path_angle}
\alias{dist_along_path_angle}
\title{Distance/angle between points along path relative to eculidean distance (2d
path)}
\usage{
dist_along_path_angle(data_df)
}
\arguments{
\item{data_df}{(n x 2) data.frame, each row is a pair of values (x,y),
assumes rows are ordered in path}
}
\value{
\item{distance}{vector of distances beween points (n - 1)}
\item{angle}{vector of angle change between points (n - 1) - in radians}
}
\description{
Calculates the distance and angle between each point of a path
}
