#How to access GEO expression data set using Geo query package in R

library(GEOquery)
gse <- getGEO("GSE5583",GSEMatrix = TRUE)
class(gse)
length(gse)
names(gse)
list(gse)
names(pData(gse[[1]]))
gsm <-getGEO("GSM130365")
head(Meta(gsm))
Table(gsm) [, 1:3]
gds <- getGEO("GDS501")
Columns(gds)[,1:3]
#TO retrieve expression data
Expr_GSE5583 <- exprs(gse[[1]])
head(Expr_GSE5583)
hist(Expr_GSE5583)