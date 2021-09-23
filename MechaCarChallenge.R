library(dplyr)
> MechaCar_mpg <- read_csv("MechaCar_mpg.csv")
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg))
