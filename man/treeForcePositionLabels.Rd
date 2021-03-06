% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tree-force-layout.R
\name{treeForcePositionLabels}
\alias{treeForcePositionLabels}
\title{Determine position for segment labels in force-directed layout}
\usage{
treeForcePositionLabels(object, label.spacing = 5)
}
\arguments{
\item{object}{An URD object}

\item{label.spacing}{(Numeric) Length of vector from final cell in each tip to label}
}
\value{
A data.frame with rows as tips, and columns containing labels and coordinates.
This is normally stored in \code{@tree$walks.force.labels}.
}
\description{
Finds cells near the end of each tip, and attempts to calculate a vector from
them to determine a good location for a label near each tip. Called automatically
by \code{\link{treeForceDirectedLayout}}, but can be re-run if needed.
}
\examples{
object@tree$walks.force.labels <- treeForcePositionLabels(object, label.spacing=2) # Move labels closer

}
