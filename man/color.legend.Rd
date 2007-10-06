\name{color.legend}
\alias{color.legend}
\title{Legend matching categories or values to colors}
\description{Display a color legend on a plot}
\usage{
 color.legend(xl,yb,xr,yt,legend,rect.col,cex=1,align="lt",gradient="x",...)
}
\arguments{
 \item{xl,yb,xr,yt}{The lower left and upper right coordinates of the
  rectange of colors in user coordinates.}
 \item{legend}{The labels that will appear next to some or all of the colors.}
 \item{rect.col}{The colors that will fill the rectangle.}
 \item{cex}{Character expansion factor for the labels.}
 \item{align}{How to align the labels relative to the color rectangle.}
 \item{gradient}{Whether to have a horizontal (x) or vertical (y) color
  gradient.}
 \item{...}{Additional arguments passed to \code{text}.}
}
\value{nil}
\details{
 \code{color.legend} displays a rectangle defined by the first four arguments
 filled with smaller rectangles of color defined by the \code{rect.col} argument.
 Labels, defined by the \code{legend} argument, are placed next to the color
 rectangle. The position of the labels is determined by whether the color
 rectangle is horizontal or vertical and the \code{align} argument. The default
 value of \code{lt} places the labels at the left of a vertical rectangle or the
 top of a horizontal one. \code{rb} puts them on the other side. To have the
 labels in the same color as the rectangles, include a \code{col} argument that
 will be passed to \code{text} as in the example.

 There can be fewer labels than colors. The labels will be evenly spaced along
 the rectangle in this case. It is possible to use empty labels to get uneven
 spacing. The user can pass more labels than colors, but the labels will almost
 certainly be crowded and it is not obvious that this would be of any use. To
 have complete control over the labels, see \code{\link{gradient.rect}} and 
 \code{\link{text}} or \code{\link{mtext}}.
}
\author{Jim Lemon}
\seealso{\code{\link{color.gradient}}, \code{\link{gradient.rect}}}
\examples{
 # get some extra room
 par(mar=c(7,4,4,6))
 testcol<-color.gradient(c(0,1),0,c(1,0),nslices=5)
 col.labels<-c("Cold","Warm","Hot")
 color2D.matplot(matrix(rnorm(100),nrow=10),c(1,0),0,c(0,1),
  main="Test color legends")
 color.legend(11,6,11.8,9,col.labels,testcol,gradient="y")
 color.legend(10.2,2,11,5,col.labels,testcol,align="rb",gradient="y")
 color.legend(0.5,-2,3.5,-1.2,col.labels,testcol)
 color.legend(7,-1.8,10,-1,col.labels,testcol,align="rb",col=testcol[c(1,3,5)])
 par(mar=c(5,4,4,2))
}
\keyword{misc}