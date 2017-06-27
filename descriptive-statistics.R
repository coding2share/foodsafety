#Food Safety STL 
#Implementation evaluation results
#Descriptive statistics
#Last edited 6/27/17
#install descr package

library(descr)

#intervention characteristics domain construct codes

#adabtability
intadapt <- c('weak neg','weak neg','neutral','neutral',
                     'neutral','neutral','neutral','neutral','neutral',
                     'weak pos','weak pos','weak pos','weak pos','strong pos','strong pos')
                   levels=c('strong pos','weak pos','mixed','neutral','weak neg','strong neg')
#complexity
intcomplex <- factor(c('strong neg','strong neg','weak neg','neutral','weak pos',
                       'weak pos','weak pos','weak pos','weak pos','strong pos',
                       'strong pos','strong pos','strong pos'),
                     levels=c('strong pos','weak pos','mixed','neutral','weak neg','strong neg'))
#relative advantage
intreladv <- factor(c('weak neg','weak neg','weak neg','weak neg','weak neg','weak neg',
                      'weak neg','weak neg','weak neg','weak neg','weak neg','weak neg',
                      'neutral','weak pos','weak pos','weak pos','weak pos','weak pos',
                      'weak pos','weak pos','weak pos','weak pos','weak pos','weak pos',
                      'weak pos','weak pos','weak pos','weak pos','weak pos','weak pos',
                      'weak pos','weak pos','weak pos','weak pos','strong pos','strong pos',
               'strong pos','strong pos','strong pos','strong pos','strong pos','strong pos',
               'strong pos','strong pos','strong pos','strong pos','strong pos','strong pos',
               'strong pos','strong pos','strong pos','mixed','mixed'),
               levels=c('strong pos','weak pos','mixed','neutral','weak neg','strong neg'))

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
outconstit <- factor(c('strong neg','strong neg','strong neg','strong neg','weak neg',
                'weak neg','weak neg','weak neg','weak neg','weak neg','weak neg',
                'weak neg','weak neg','weak neg','weak neg','weak neg','weak neg',
                'weak neg','weak neg','weak neg',
                'weak neg','weak neg','weak neg','weak neg','weak neg','weak neg',
                'weak neg','neutral','weak pos','weak pos','weak pos','weak pos','weak pos',
                'weak pos','weak pos','weak pos','weak pos','weak pos','weak pos','weak pos',
                'weak pos','weak pos','weak pos','weak pos',
                'weak pos','weak pos','weak pos','weak pos','weak pos','weak pos',
                'weak pos','weak pos','strong pos','strong pos','strong pos','strong pos',
                'strong pos','strong pos','strong pos','strong pos','strong pos','strong pos',
                'strong pos','strong pos','mixed','mixed','mixed','mixed','mixed',
                'mixed','mixed'),
                levels=c('strong pos','weak pos','mixed','neutral','weak neg','strong neg'))
#cosmopolitanism
outcosmo <- factor(c('weak neg','weak neg','weak neg','weak neg','neutral','weak pos',
                     'weak pos','weak pos','weak pos','weak pos','strong pos'),
                   levels=c('strong pos','weak pos','mixed','neutral','weak neg','strong neg'))

#dropped codes for outer setting
#outexter <- c('weak neg','neutral','neutral','strong pos')
#outpeer <- c('neutral','weak pos','weak pos','strong pos')

#descriptives for outer setting
freq(outconstit)
freq(outcosmo)


#inner setting domain construct codes

#culture
innercult <- factor(c('strong neg','strong neg','weak neg','weak neg','weak neg','neutral','neutral','weak pos','weak pos','weak pos','weak pos','weak pos','weak pos','weak pos','weak pos','weak pos',
                      'weak pos','weak pos','weak pos','weak pos','strong pos','strong pos','strong pos','mixed'),
                    levels=c('strong pos','weak pos','mixed','neutral','weak neg','strong neg'))
#compatibility
innerimpcomp <- factor(c('strong neg','strong neg','strong neg','strong neg','weak neg','weak neg','weak neg','neutral',
                         'weak pos','weak pos','weak pos','weak pos','weak pos','weak pos','weak pos','strong pos',
                         'strong pos','strong pos','strong pos','strong pos','strong pos','mixed'),
                       levels=c('strong pos','weak pos','mixed','neutral','weak neg','strong neg'))
#networks and communication
innernet <-factor(c('weak neg','neutral','neutral','weak pos','weak pos','strong neg','strong neg','strong neg',
              'strong neg','weak neg','weak neg','weak neg','weak neg','neutral','weak pos','weak pos',
              'weak pos','weak pos','weak pos','weak pos','weak pos',
              'weak pos','strong pos','strong pos','strong pos','strong pos','strong pos','strong pos','strong pos'),
              levels=c('strong pos','weak pos','mixed','neutral','weak neg','strong neg'))
#structural characteristics
innerstruct <-factor(c('strong neg','strong neg','strong neg','strong neg','strong neg','strong neg','strong neg','strong neg','weak neg','weak neg','weak neg','weak neg','weak neg','weak neg','weak neg','weak neg','weak neg','weak neg','weak neg','weak neg',
                'weak neg','weak neg','weak neg','neutral','neutral','neutral','neutral','neutral','neutral','weak pos','weak pos','weak pos','weak pos','weak pos','weak pos','weak pos','weak pos','weak pos','strong pos','strong pos','strong pos','strong pos','strong pos','strong pos','strong pos','strong pos',
                'weak pos','weak neg','mixed'),
                levels=c('strong pos','weak pos','mixed','neutral','weak neg','strong neg'))

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
procenginterv <- factor(c('strong neg','weak neg','weak neg','weak neg','weak pos','strong pos','strong pos'),
                        levels=c('strong pos','weak pos','mixed','neutral','weak neg','strong neg'))
#engaging key stakeholders
procengkey <- factor(c('weak neg','weak neg','weak neg','weak pos','weak pos','strong pos'),
                     levels=c('strong pos','weak pos','mixed','neutral','weak neg','strong neg'))
#executing
procexec <- factor(c('strong neg','strong neg','weak neg','weak neg','weak neg','neutral','strong pos','strong pos','strong pos'),
                   levels=c('strong pos','weak pos','mixed','neutral','weak neg','strong neg'))

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
charknow <- factor(c('strong neg','strong pos','strong neg','strong neg','weak neg','weak neg',
                     'neutral','neutral','weak pos','weak pos','weak pos','weak pos','weak pos',
                     'weak pos','mixed','mixed'),
                   levels=c('strong pos','weak pos','mixed','neutral','weak neg','strong neg'))
#other personal attributes
charoth <- factor(c('strong neg','weak neg','weak neg','weak neg','weak neg','weak neg','weak neg',
                    'neutral','weak pos','weak pos','weak pos','weak pos','strong pos','mixed'),
                  levels=c('strong pos','weak pos','mixed','neutral','weak neg','strong neg'))
#self-efficacy
charself <- factor(c('strong neg','strong neg','weak neg','weak neg','weak pos','weak pos',
                     'weak pos','weak pos','strong pos'),
                   levels=c('strong pos','weak pos','mixed','neutral','weak neg','strong neg'))
#descriptive stats
#characteristics of individuals domain
freq(charknow)
freq(charoth)
freq(charself)
