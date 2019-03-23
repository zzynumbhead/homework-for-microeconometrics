##soybean##
regress lnsoy lnsoy1 lnppi1 lnnx1 lnex1 lnrf1 lnm21
regress lnsoy lnsoy1 lnex1 lnm21 lnppi1 lnrf1
regress lnsoy lnsoy1 lnex1 lnm21 lnrf1
regress lnsoy lnsoy1 lnex1 lnm21 lnppi1 

gen predictionlnsoy=.7418516*lnsoy1+.8907193*lnex1-.2284704*lnm21+.0161209*lnrf1+3.663025
twoway scatter lnsoy predictionlnsoy || lfit lnsoy predictionlnsoy


##gold##

regress lngold lngold1 lnrf1 lnex1
regress lngold lngold1 lnm21 lnex1

gen predictionlngold=.879263*lngold1-.0529191*lnm21+.4074437*lnex1+.6605369
twoway scatter lngold predictionlngold || lfit lngold predictionlngold


##copper##

regress lncu lncu1 lncu2 lncu3 lnppi1 lnnx1 

gen predictionlncu=1.34122*lncu1-.6953517*lncu2+.3191183*lncu3+1.87237*lnppi1-.0032452*lnnx1-8.190684
twoway scatter lncu predictionlncu || lfit lncu predictionlncu
