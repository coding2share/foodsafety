#Food Safety STL 
#Implementation evaluation results
#Summary figures
#Last edited 6/27/17
#install ggplot2, reshape2, RColorBrewer, and likert packages

#open libraries
library(ggplot2)
library(likert)
library(reshape2)
library(RColorBrewer)

#Figure 1
#frequency graph of the constructs mentioned
item <- as.factor(c('Adaptability','Complexity',
                    'Relative advantage',
                    'Constituent needs\nand resources','Cosmopolitanism',
                    'Culture','Compatibility','Networks & communications',
                    'Structural characteristics','Engaging innovation participants',
                    'Engaging key\nstakeholders','Executing',
                    'Knowledge & beliefs\nabout the intervention',
                    'Other personal attributes', 'Self-efficacy'))
cat <- as.factor(c('Intervention\ncharacteristics','Intervention\ncharacteristics',
                   'Intervention\ncharacteristics',
                   'Outer setting','Outer setting',
                   'Inner setting','Inner setting','Inner setting',
                   'Inner setting','Process',
                   'Process','Process',
                   'Characteristics\nof individuals',
                   'Characteristics\nof individuals', 'Characteristics\nof individuals'))
num <- c(15,13,53,71,11,24,22,29,49,7,6,9,16,14,9)
numitems<-data.frame(item,num,cat)
# The palette with grey:
ggplot(numitems, aes(reorder(item,num), num,fill=cat)) + 
  geom_bar(stat="identity",colour="gray") +
  coord_flip() + 
  scale_fill_grey(start = .2, end = 1, name = "Domain") +
  ylab("Number of responses coded\nto construct") + 
  xlab("Construct") +
  theme_minimal()

#table of frequencies by item category
aggregate(numitems$num, by=list(Category=numitems$cat), FUN=sum)


#Figure 2
#percent of responses from each category
#for intervention characteristics
Item <- as.factor(c('Intervention characteristic: Adaptability','Intervention characteristic: Complexity',
                    'Intervention characteristic: Relative advantage',
                    'Outer setting: Constituent needs and resources','Outer setting: Cosmopolitanism',
                    'Inner setting: Culture','Inner setting: Compatibility','Inner setting: Networks & communications',
                    'Inner setting: Structural characteristics','Process: Engaging innovation participants',
                    'Process: Engaging key stakeholders','Process: Executing',
                    'Characteristics of individuals: Knowledge & beliefs about the intervention',
                    'Characteristics of individuals: Other personal attributes', 'Characteristics of individuals: Self-efficacy'))
astrongpos <- c(13.33,30.769,32.075,16.901,9.091,12.5,27.273,24.14,16.327,28.57,16.67,33.33,
                6.25,7.143,11.11)
bweakpos<- c(26.67,38.46,39.62,33.80,45.46,54.167,31.818,34.48,20.408,14.29,33.33,0,
             37.50,28.571,44.44)
cmixed <- c(0,0,3.774,9.859,0,4.167,4.545,0,2.041,0,0,0,12.5,7.143,0)
dneutral <- c(46.67,7.692,1.887,1.408,9.091,8.333,4.545,10.34,12.245,0,0,11.11,12.5,7.143,0)
cmixedneut <- cmixed + dneutral
eweakneg <- c(13.33,7.692,22.642,32.394,36.364,12.5,13.636,17.24,32.653,42.86,50,33.33,12.5,42.857,22.22)
fstrongneg <- c(0,15.385,0,5.634,0,8.333,18.182,13.79,16.327,14.29,0,22.22,18.75,7.143,22.22)

scoresi <- data.frame(Item, astrongpos, bweakpos, cmixedneut,eweakneg,fstrongneg)

scoresj <- data.frame(Item, fstrongneg,eweakneg,cmixedneut,bweakpos,astrongpos)

scores3i<-likert(,scoresj)
scores3i
plot(scores3i,centered = FALSE, wrap=35, plot.percent.neutral=F) + scale_fill_grey(start = .9, end = .3, 
                                                    labels=c('Strong negative','Weak negative',
                                                             'Neutral & Mixed','Weak positive',
                                                             'Strong positive'), name="Code") +
  theme(legend.position='right')+ xlab("Domain and construct")




