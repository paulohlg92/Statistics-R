setwd("C:/curso-dsa/scriptsR")
getwd()

vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

#Resumo do Dataset
View(vendas)
str(vendas)
summary(vendas$Valor)

#Vari�ncia
var(vendas$Valor)

#Desvio Padr�o
sd(vendas$Valor)