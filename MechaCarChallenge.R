library(dplyr)

MechaCar_mpg <- read_csv("MechaCar_mpg.csv")
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg))

Suspension_Coil <- read_csv("Suspension_Coil.csv")
total_summary <- Suspension_Coil %>% summarise(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI))
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI))

t.test(Suspension_Coil$PSI, mu=1500)

t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot1")$PSI, mu = 1500)
t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot2")$PSI, mu = 1500)
t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot3")$PSI, mu = 1500)
