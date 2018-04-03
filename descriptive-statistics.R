#Food Safety STL 
#Implementation evaluation results
#Descriptive statistics
#Last edited 6/27/17
#install descr package

library(descr)

#intervention characteristics domain construct codes

#adaptability
intadapt <- c('weak neg','weak neg',
              'neutral','neutral','neutral','neutral','neutral',
              'weak pos','weak pos','weak pos','weak pos',
              'strong pos','strong pos')
                   levels=c('strong pos','weak pos','mixed','neutral','weak neg','strong neg')
intadapt.speaker <- c(4,4,
                      2,4,5,7,7,
                      4,3,5,6,
                      2,5)
adapt.int.char <- data.frame(intadapt, intadapt.speaker,"adapt","Intervention Characteristics")
names(adapt.int.char) <- c('coded', 'speaker', 'subconstruct','construct')

#complexity
intcomplex <- factor(c('strong neg','strong neg',
                       'weak neg',
                       'neutral',
                       'weak pos','weak pos','weak pos','weak pos','weak pos',
                       'strong pos','strong pos','strong pos','strong pos'),
                     levels=c('strong pos','weak pos','mixed','neutral','weak neg','strong neg'))
intcomplex.speaker <- c(1,7,
                        4,
                        2,
                        5,6,6,6,7,
                        1,2,3,4)
complex.int.char <- data.frame(intcomplex, intcomplex.speaker,"complex","Intervention Characteristics")
names(complex.int.char) <- c('coded', 'speaker', 'subconstruct','construct')

#relative advantage
intreladv <- factor(c('weak neg','weak neg','weak neg','weak neg','weak neg',
                      'weak neg','weak neg','weak neg','weak neg','weak neg',
                      'weak neg','weak neg',
                      'neutral',
                      'weak pos','weak pos','weak pos','weak pos','weak pos',
                      'weak pos','weak pos','weak pos','weak pos','weak pos',
                      'weak pos','weak pos','weak pos','weak pos','weak pos',
                      'weak pos','weak pos','weak pos','weak pos','weak pos',
                      'weak pos',
                      'strong pos','strong pos','strong pos','strong pos','strong pos',
                      'strong pos','strong pos','strong pos','strong pos','strong pos',
                      'strong pos','strong pos','strong pos','strong pos','strong pos',
                      'strong pos',
                      'mixed','mixed'),
               levels=c('strong pos','weak pos','mixed','neutral','weak neg','strong neg'))
intreladv.speaker <- c(1,1,1,1,3,
                      4,5,5,5,5,
                      6,5,
                      2,
                      1,1,1,2,2,
                      2,3,3,3,4,
                      4,4,5,5,5,
                      5,5,5,6,6,
                      7,
                      1,1,1,1,1,
                      1,1,2,2,3,
                      4,5,5,6,6,
                      6,
                      2,4)
reladv.int.char <- data.frame(intreladv, intreladv.speaker,"reladv","Intervention Characteristics")
names(reladv.int.char) <- c('coded', 'speaker', 'subconstruct','construct')



#intervention codes with fewer than 5
#intcost <- c('weak neg','weak pos')
#intdesign <- c('weak pos','weak pos')
#intevid <- c('weak neg','weak neg','weak neg','neutral','strong pos')

#frequencies for each
freq(intadapt)
freq(intcomplex)
freq(intreladv)


#outer setting domain construct codes

#constituent needs
outconstit <- factor(c('strong neg','strong neg','strong neg','strong neg',
                       'weak neg','weak neg','weak neg','weak neg','weak neg',
                       'weak neg','weak neg','weak neg','weak neg','weak neg',
                       'weak neg','weak neg','weak neg','weak neg','weak neg',
                       'weak neg','weak neg','weak neg','weak neg','weak neg',
                       'weak neg','weak neg',
                       'neutral',
                       'weak pos','weak pos','weak pos','weak pos','weak pos',
                       'weak pos','weak pos','weak pos','weak pos','weak pos',
                       'weak pos','weak pos','weak pos','weak pos','weak pos',
                       'weak pos','weak pos','weak pos','weak pos','weak pos',
                       'weak pos','weak pos','weak pos','weak pos',
                       'strong pos','strong pos','strong pos','strong pos','strong pos',
                       'strong pos','strong pos','strong pos','strong pos','strong pos',
                       'strong pos','strong pos',
                       'mixed','mixed','mixed','mixed','mixed',
                       'mixed','mixed'),
                levels=c('strong pos','weak pos','mixed','neutral','weak neg','strong neg'))
outconstit.speaker <- factor(c(1,1,1,3,
                               1,1,3,3,3,
                               4,4,4,4,4,
                               5,5,5,5,6,
                               6,6,7,7,7,
                               7,5,
                               4,
                               1,1,1,1,1,
                               2,2,2,2,3,
                               3,5,5,5,5,
                               5,5,5,6,6,
                               6,6,7,7,
                               1,1,1,1,4,
                               4,5,5,5,6,
                               6,7,
                               1,1,3,3,5,
                               5,6
                               ))
constit.out <- data.frame(outconstit, outconstit.speaker,"constituent","Outer Setting")
names(constit.out) <- c('coded', 'speaker', 'subconstruct','construct')

#cosmopolitanism
outcosmo <- factor(c('weak neg','weak neg','weak neg','weak neg',
                     'neutral',
                     'weak pos','weak pos','weak pos','weak pos','weak pos',
                     'strong pos'),
                   levels=c('strong pos','weak pos','mixed','neutral','weak neg','strong neg'))
outcosmo.speaker <- factor(c(3,4,5,5,
                     3,
                     3,3,3,3,5,
                     3))
cosmo.out <- data.frame(outcosmo, outcosmo.speaker,"cosmopolitan","Outer Setting")
names(cosmo.out) <- c('coded', 'speaker', 'subconstruct','construct')

#dropped codes for outer setting
#outexter <- c('weak neg','neutral','neutral','strong pos')
#outpeer <- c('neutral','weak pos','weak pos','strong pos')

#descriptives for outer setting
freq(outconstit)
freq(outcosmo)


#inner setting domain construct codes

#culture
innercult <- factor(c('strong neg','strong neg',
                      'weak neg','weak neg','weak neg',
                      'neutral','neutral',
                      'weak pos','weak pos','weak pos','weak pos','weak pos',
                      'weak pos','weak pos','weak pos','weak pos','weak pos',
                      'weak pos','weak pos','weak pos',
                      'strong pos','strong pos','strong pos',
                      'mixed'),
                    levels=c('strong pos','weak pos','mixed','neutral','weak neg','strong neg'))
innercult.speaker <- factor(c(1,4,
                              4,5,6,
                              4,5,
                              1,1,1,2,3,
                              3,3,3,4,5,
                              5,6,6,
                              1,2,5,
                              7))
cult.inner <- data.frame(innercult, innercult.speaker,"culture","Inner Setting")
names(cult.inner) <- c('coded', 'speaker', 'subconstruct','construct')

#compatibility
innerimpcomp <- factor(c('strong neg','strong neg','strong neg','strong neg',
                         'weak neg','weak neg','weak neg',
                         'neutral',
                         'weak pos','weak pos','weak pos','weak pos','weak pos',
                         'weak pos','weak pos',
                         'strong pos','strong pos','strong pos','strong pos','strong pos',
                         'strong pos',
                         'mixed'),
                       levels=c('strong pos','weak pos','mixed','neutral','weak neg','strong neg'))
innerimpcomp.speaker <- factor(c(1,1,1,1,
                                 1,1,1,
                                 4,
                                 1,1,1,5,5,
                                 5,7,
                                 1,5,5,6,6,
                                 7,
                                 2
                                 ))
comp.inner <- data.frame(innerimpcomp, innerimpcomp.speaker,"compatibility","Inner Setting")
names(comp.inner) <- c('coded', 'speaker', 'subconstruct','construct')

#networks and communication
innernet <-factor(c('neutral','neutral','neutral',
                    'strong neg','strong neg','strong neg','strong neg',
                    'weak neg','weak neg','weak neg','weak neg','weak neg',
                    'weak pos','weak pos','weak pos','weak pos','weak pos',
                    'weak pos','weak pos','weak pos','weak pos',
                    'strong pos','strong pos','strong pos','strong pos','strong pos',
                    'strong pos','strong pos'),
              levels=c('strong pos','weak pos','mixed','neutral','weak neg','strong neg'))
innernet.speaker <- factor(c(1,3,7,
                             4,4,4,4,
                             1,1,1,1,4,
                             1,1,1,1,1,
                             1,6,7,7,
                             1,2,2,2,3,
                             7,7))
net.inner <- data.frame(innernet, innernet.speaker,"networks","Inner Setting")
names(net.inner) <- c('coded', 'speaker', 'subconstruct','construct')

#structural characteristics
innerstruct <-factor(c('strong neg','strong neg','strong neg','strong neg','strong neg',
                       'strong neg','strong neg','strong neg',
                       'weak neg','weak neg','weak neg','weak neg','weak neg',
                       'weak neg','weak neg','weak neg','weak neg','weak neg',
                       'weak neg','weak neg','weak neg','weak neg',
                       'neutral','neutral','neutral','neutral','neutral',
                       'neutral','neutral',
                       'weak pos','weak pos','weak pos','weak pos','weak pos',
                       'weak pos','weak pos','weak pos','weak pos',
                       'strong pos','strong pos','strong pos','strong pos','strong pos',
                       'strong pos','strong pos','strong pos',
                       'mixed'),
                levels=c('strong pos','weak pos','mixed','neutral','weak neg','strong neg'))
innerstruct.speaker <- factor(c(1,1,1,3,4,
                                4,4,5,
                                1,1,1,1,2,
                                3,3,3,3,3,
                                3,5,6,7,
                                1,2,2,3,3,
                                3,6,
                                1,1,1,1,4,
                                6,6,6,6,
                                1,1,2,2,5,
                                6,7,7,
                                5))
struct.inner <- data.frame(innerstruct, innerstruct.speaker,"structural","Inner Setting")
names(struct.inner) <- c('coded', 'speaker', 'subconstruct','construct')

#inner setting dropped codes
#innerimplearn <-c('strong neg','weak pos','weak pos','mixed') 
#innerimporg <- 'weak pos'
#innerimprel <- c('strong neg','strong neg','weak neg','weak pos','weak pos','weak pos','weak pos','strong pos','strong pos','mixed')
#innerimptens <- 'strong neg'
#innerreadaccess<- c('strong neg','weak neg','weak pos','strong neg','weak neg')
#innerreadavail <-c('weak pos','weak neg','weak neg','weak neg','weak neg','neutral','weak pos','weak pos','weak pos','strong pos','weak neg')
#innerreadlead<-c('weak neg','weak pos','strong pos','strong pos','strong pos')

#inner setting descriptives
freq(innercult)
freq(innerimpcomp)
freq(innernet)
freq(innerstruct)


#process domain construct codes

#engaging intervention participants
procenginterv <- factor(c('strong neg',
                          'weak neg','weak neg','weak neg',
                          'weak pos',
                          'strong pos','strong pos'),
                        levels=c('strong pos','weak pos','mixed','neutral','weak neg','strong neg'))
procenginterv.speaker <- factor(c(1,
                                  1,5,7,
                                  1,
                                  1,1))
interven.process <- data.frame(procenginterv, procenginterv.speaker,"intervention","Process")
names(interven.process) <- c('coded', 'speaker', 'subconstruct','construct')


#engaging key stakeholders
procengkey <- factor(c('weak neg','weak neg','weak neg',
                       'weak pos','weak pos',
                       'strong pos'),
                     levels=c('strong pos','weak pos','mixed','neutral','weak neg','strong neg'))
procengkey.speaker <- factor(c(1,3,5,
                               1,1,
                               1))
key.process <- data.frame(procengkey, procengkey.speaker,"keyStakehold","Process")
names(key.process) <- c('coded', 'speaker', 'subconstruct','construct')

#executing
procexec <- factor(c('strong neg','strong neg',
                     'weak neg','weak neg',
                     'neutral',
                     'strong pos','strong pos','strong pos'),
                   levels=c('strong pos','weak pos','mixed','neutral','weak neg','strong neg'))
procexec.speaker <- factor(c(1,7,
                             1,1,
                             1,
                             1,1,1))
execute.process <- data.frame(procexec, procexec.speaker,"executing","Process")
names(execute.process) <- c('coded', 'speaker', 'subconstruct','construct')

#dropped process constructs
#procengchamp <'strong neg'
#procengext<-c('weak neg','weak neg','strong pos','strong pos')
#procengformal <- 'strong pos'
#procplan <- c('neutral','weak pos','strong pos','strong pos')
#procrefl <- 'strong pos'
#procengopin<- c('weak neg','neutral')

#descriptives
freq(procenginterv)
freq(procengkey)
freq(procexec)

#characteristics of individuals domain constructs

#knowlege and beliefs about intervention
charknow <- factor(c('strong neg','strong neg','strong neg',
                     'strong pos',
                     'weak neg','weak neg',
                     'neutral','neutral',
                     'weak pos','weak pos','weak pos','weak pos','weak pos',
                     'weak pos',
                     'mixed','mixed'),
                   levels=c('strong pos','weak pos','mixed','neutral','weak neg','strong neg'))
charknow.speaker <- factor(c(1,1,7,
                             7,
                             1,5,
                             1,5,
                             1,1,1,1,1,
                             2,
                             1,2))
knowledge.charIndiv <- data.frame(charknow, charknow.speaker,"knowledge","Individual Characteristics")
names(knowledge.charIndiv) <- c('coded', 'speaker', 'subconstruct','construct')

#other personal attributes
charoth <- factor(c('strong neg',
                    'weak neg','weak neg','weak neg','weak neg','weak neg',
                    'weak neg',
                    'neutral',
                    'weak pos','weak pos','weak pos','weak pos',
                    'strong pos',
                    'mixed'),
                  levels=c('strong pos','weak pos','mixed','neutral','weak neg','strong neg'))
charoth.speaker <- factor(c(1,
                            1,3,4,4,5,
                            6,
                            1,
                            1,1,1,2,
                            1,
                            6))
attributes.charIndiv <- data.frame(charoth, charoth.speaker,"attributes","Individual Characteristics")
names(attributes.charIndiv) <- c('coded', 'speaker', 'subconstruct','construct')

#self-efficacy
charself <- factor(c('strong neg','strong neg',
                     'weak neg','weak neg',
                     'weak pos','weak pos','weak pos','weak pos',
                     'strong pos'),
                   levels=c('strong pos','weak pos','mixed','neutral','weak neg','strong neg'))
charself.speaker <- factor(c(1,3,
                             1,3,
                             1,1,1,3,
                             7))
selfEff.charIndiv <- data.frame(charself, charself.speaker,"selfEfficacy","Individual Characteristics")
names(selfEff.charIndiv) <- c('coded', 'speaker', 'subconstruct','construct')

#descriptive stats
#characteristics of individuals domain
freq(charknow)
freq(charoth)
freq(charself)

speaker.tone <- rbind(adapt.int.char,complex.int.char,reladv.int.char,
                      constit.out, cosmo.out, cult.inner, comp.inner, 
                      net.inner, struct.inner, interven.process, key.process,
                      execute.process, knowledge.charIndiv,attributes.charIndiv,
                      selfEff.charIndiv)
speaker.tone$speaker <- as.factor(speaker.tone$speaker)
speaker.tone$coded <- factor(speaker.tone$coded, 
                             levels = c('strong pos','weak pos','mixed','neutral','weak neg','strong neg'))

# percent statements per speaker
prop.table(table(speaker.tone$speaker))
table(speaker.tone$speaker)

# tone of speakers
library(ggplot2)
ggplot(speaker.tone, aes(x = speaker, fill = coded)) +
  geom_bar() +
  theme_bw() +
  scale_fill_grey(start = .3, end = .9, labels = c("Strong positive",
                                                   "Weak positive",
                                                   "Mixed",
                                                   "Neutral",
                                                   "Weak negative",
                                                   "Strong negative")) + 
  facet_wrap(~construct, nrow=3, shrink = TRUE) +
  theme(legend.position = c(1, 0), legend.justification = c(1.5, 0),
        legend.title=element_blank()) + 
  ylab("Number of statements") + xlab("Participant identification number")


