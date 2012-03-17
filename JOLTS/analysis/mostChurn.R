rm(list=ls())
source("http://bocowgill.com/code.R")
d=read.csv("../data/jt.data.4.TotalSeparations",sep="\t")
seriesIds=read.csv("../data/jt.series",sep="\t")
d=merge(d,seriesIds,by="series_id",all.x=T,all.y=F)
industries=read.csv("../data/jt.industry",sep="\t")
d=merge(d,industries,by="industry_code",all.x=T,all.y=F)

output=data.frame(by(d$value,d$industry_text,sum))
output=output[order(output$sum,decreasing=T),]

