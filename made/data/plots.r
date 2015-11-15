#install.packages("xlsx")
require(xlsx)
setwd("E:\\2_trabajo\\doctorado\\geneura-papers\\2016-EvoStar\\made\\data")

par(mfrow=c(3,3))
par(xlog=F)
par(ylog=F)

dataFitnessM = read.xlsx(
  "experiment_Evostar2016_1_MONOMYTH_20151109174632.35.xlsx", 
  2, startRow=3, header = F,
  colClasses="numeric",
  stringsAsFactors=FALSE)

dataFitnessA = read.xlsx(
  "experiment_Evostar2016_1_ALL_20151101211245.807.xlsx", 
  2, startRow=3, header = F,
  colClasses="numeric",
  stringsAsFactors=FALSE)

dataFitnessAD = read.xlsx(
  "experiment_Evostar2016_3_ALL_20151101211411.487.xlsx", 
  2, startRow=3, header = F,
  colClasses="numeric",
  stringsAsFactors=FALSE)

#fitness evolution

generations <- dataFitnessM$X1
fitness <- dataFitnessM$X4
plot(generations, fitness, main="Fitness M",
     type="l")

generations <- dataFitnessA$X1
fitness <- dataFitnessA$X4
plot(generations, fitness, main="Fitness A",
     type="l")

generations <- dataFitnessAD$X1
fitness <- dataFitnessAD$X4
plot(generations, fitness, main="Fitness AD",
     type="l")

#monomyth occurrences

generations <- dataFitnessM$X1
monomyth <- dataFitnessM$X24
plot(generations, monomyth, main="Monomyth in fitness M", 
     ylab="occurrences of the monomyth",
     type="l")

generations <- dataFitnessA$X1
monomyth <- dataFitnessA$X24
plot(generations, monomyth, main="Monomyth in fitness A", 
     ylab="occurrences of the monomyth",
     type="l")

generations <- dataFitnessAD$X1
monomyth <- dataFitnessAD$X24
plot(generations, monomyth, main="Monomyth in fitness AD", 
     ylab="occurrences of the monomyth",
     type="l")

#other archetypes occurrences

generations <- dataFitnessM$X1
allied <- dataFitnessM$X10
guardian <- dataFitnessM$X14
herald <- dataFitnessM$X16
hero <- dataFitnessM$X18
mentor <- dataFitnessM$X22
shadow <- dataFitnessM$X26
shapeshifter <- dataFitnessM$X28
trickster <- dataFitnessM$X30

plot(generations, allied, main="Facilitators in fitness M", 
     ylab="occurrences of the archetype",
     type="b", pch=0)
lines(generations, guardian,type="b", pch=1)
lines(generations, herald,type="b", pch=2)
lines(generations, hero,type="b", pch=3)
lines(generations, mentor,type="b", pch=4)
lines(generations, shadow, type="b", pch=5)
lines(generations, shapeshifter,type="b", pch=6)
lines(generations, trickster, type="b", pch=7)
legend("topleft", legend=c("ally","guardian","herald", "hero", "mentor",
                             "shadow", "shapeshifter", "trickster"),
       bty = "n", 
       pch=c(0,1,2,3,4,5,6,7),
       y.intersp=0.15
)


print(hero)
print(generations)

generations <- dataFitnessA$X1
allied <- dataFitnessA$X10
guardian <- dataFitnessA$X14
herald <- dataFitnessA$X16
hero <- dataFitnessA$X18
mentor <- dataFitnessA$X22
shadow <- dataFitnessA$X26
shapeshifter <- dataFitnessA$X28
trickster <- dataFitnessA$X30

plot(generations, allied, main="Facilitators in fitness A", 
     ylab="occurrences of the archetype",
     type="b", pch=0)
lines(generations, guardian,type="b", pch=1)
lines(generations, herald,type="b", pch=2)
lines(generations, hero,type="b", pch=3)
lines(generations, mentor,type="b", pch=4)
lines(generations, shadow, type="b", pch=5)
lines(generations, shapeshifter,type="b", pch=6)
lines(generations, trickster, type="b", pch=7)
legend("topleft", legend=c("ally","guardian","herald", "hero", "mentor",
                             "shadow", "shapeshifter", "trickster"),
       bty = "n", 
       pch=c(0,1,2,3,4,5,6,7),
       y.intersp=0.15
)






generations <- dataFitnessAD$X1
allied <- dataFitnessAD$X10
guardian <- dataFitnessAD$X14
herald <- dataFitnessAD$X16
hero <- dataFitnessAD$X18
mentor <- dataFitnessAD$X22
shadow <- dataFitnessAD$X26
shapeshifter <- dataFitnessAD$X28
trickster <- dataFitnessAD$X30

plot(generations, allied, main="Facilitators in fitness AD", 
     ylab="occurrences of the archetype",
     type="b", pch=0)
lines(generations, guardian,type="b", pch=1)
lines(generations, herald,type="b", pch=2)
lines(generations, hero,type="b", pch=3)
lines(generations, mentor,type="b", pch=4)
lines(generations, shadow, type="b", pch=5)
lines(generations, shapeshifter,type="b", pch=6)
lines(generations, trickster, type="b", pch=7)
legend("topleft", legend=c("ally","guardian","herald", "hero", "mentor",
                           "shadow", "shapeshifter", "trickster"),
       bty = "n", 
       pch=c(0,1,2,3,4,5,6,7),
       y.intersp=0.15
       )











