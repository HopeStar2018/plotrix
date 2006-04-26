\name{get.triprop}
\alias{get.triprop}
\title{Enter three proportion data - usually soil textures.}
\usage{
 get.triprop(use.percentages=FALSE,cnames=c("1","2","3"))
}
\arguments{
 \item{use.percentages}{Logical - whether to treat the entries as
  percentages and scale to proportions.}
 \item{cnames}{column names for the resulting three column matrix.}
}
\description{
 \code{get.triprop} allows the user to enter triplets of proportions
 or percentages of three components such as sand, silt and clay in soils.}
}
\details{
 The three proportions of each row must sum to 100 or 1 within 1% or
 the function will warn the operator.}
\value{A matrix of the components of one or more observations.}
\author{Jim Lemon}
\seealso{\code{\link{triax.plot}}, \code{\link{soil.texture}}}
\examples{
 if(dev.interactive()) {
  # get the default proportions for soil textures
  newsp<-get.triprop()
  # show the soil triangle
  soil.texture()
  # now plot the observations
  show.soil.texture(newsp)
 }
}
\keyword{misc}