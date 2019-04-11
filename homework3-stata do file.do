regress smoker smkban age hsdrop hsgrad colsome colgrad black female

probit smoker smkban age hsdrop hsgrad colsome colgrad black female

logit smoker smkban age hsdrop hsgrad colsome colgrad black female
lroc

gen prediction_binary=-.0415469*smkban-.0007811*age+.2575922*hsdrop+.2157892*hsgrad+.1461983*colsome+.0354787*colgrad-.0195565*black-.0308917*female+ .1694339
gen predictedsmoker_binary = 0
replace predictedsmoker_binary = 1 if prediction_binary >= 0.5 
gen error_binary = abs (smoker- predictedsmoker_binary) 
sum error_binary 

gen prediction_probit= -.1407694*smkban-.0023167*age+.9417677*hsdrop+.8312891*hsgrad+.6228782*colsome+.1973913*colgrad-.0576871*black-.1028728*female-1.089706 
egen prediction_probit_pr=std(prediction_probit)
gen predictedsmoker_probit=0 
replace predictedsmoker_probit_pr=1 if prediction_probit>=0.5
gen error_probit=abs(smoker - predictedsmoker_probit ) 
sum error_probit

gen prediction_logit=-.2325941*smkban-.0041837*age+ 1.66565*hsdrop+1.487921*hsgrad+ 1.13577*colsome+.3787724*colgrad -.1098985*black -.1784903*female-1.875903
gen prediction_logit_pr=(1+exp(-1*prediction_logit))^-1
gen predictedsmoker_logit=0
replace predictedsmoker_logit=1 if prediction_logit_pr >=0.5
gen error_logit=abs(smoker - predictedsmoker_logit)
sum error_logit



















