library(MVN)
library(data.table)
library(rsm)
library(agricolae)
library(ResourceSelection)

Data <- fread("C:/Users/ASUS/Desktop/Docs PS/UM/Graph NpsSiO2/GLM/35PPM/DE - Time, Agi, Nps/Data.txt", sep="\t")
attach(Data)
names(Data)
print(head(Data))
str(Data)
Modelo <- glm(Y ~ A + B + C + A*B + B*C + A*C + A*B*C, family = gaussian, data = Data)
summary(Modelo)
hoslem.test(Modelo$y, Modelo$fitted)
Modelo
plot(Modelo)

