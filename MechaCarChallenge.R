library(dplyr)

mechacar_mpg <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) #import MechaCar_mpg dataset

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_mpg) #multiple linear regression

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_mpg)) #generate summary table

Suspension_Coil <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F) #import Suspension_Coil dataset

#Create total summary table for PSI column in suspension coil dataframe for mean,median,var, and sd
total_summary <- Suspension_Coil %>% summarize(Mean_PSI=mean(PSI),
                                               Median_PSI=median(PSI),
                                               Var_PSI=var(PSI),
                                               Std_Dev_PSI=sd(PSI),
                                               Num_Coil=n(), .groups='keep')

lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                                                             Median_PSI=median(PSI),
                                                                             Var_PSI=var(PSI),
                                                                             Std_Dev_PSI=sd(PSI),
                                                                             Num_Coil=n(), .groups='keep')

#t test across all manufacturing lots                           
t.test(Suspension_Coil$PSI, mu=1500)

#t test across only Lot1
t.test(Suspension_Coil$PSI, mu=1500, subset(Suspension_Coil, Suspension_Coil$Manufacturing_Lot=="Lot1", select=c(PSI)))

#t test across only Lot2
t.test(Suspension_Coil$PSI, mu=1500, subset(Suspension_Coil, Suspension_Coil$Manufacturing_Lot=="Lot2", select=c(PSI)))

#t test across only Lot3
t.test(Suspension_Coil$PSI, mu=1500, subset(Suspension_Coil, Suspension_Coil$Manufacturing_Lot=="Lot3", select=c(PSI)))
