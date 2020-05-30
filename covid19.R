#Library
library(covid19.analytics)

#Data
ag <- covid19.data(case = 'aggregated')
tsc <- covid19.data(case = 'ts-confirmed')
tsa <- covid19.data(case = 'ts-ALL')

#Summary
report.summary(Nentries = 10,
               graphical.output = T)

#Totals Per Location
tots.per.location(tsc, geo.loc = 'US')

#Growth Rate
growth.rate(tsc, geo.loc = 'US')

#Totals Plot
totals.plt(tsa)

#World Map
live.map(tsc)

#SIR Model
generate.SIR.model(tsc, 'Bangladesh', tot.population = 161400000)
