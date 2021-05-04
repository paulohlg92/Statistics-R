setwd("C:/curso-dsa/scriptsR")
getwd()

vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

#Resumo do Dataset
View(vendas)
str(vendas)
summary(vendas$Valor)

#Variância
var(vendas$Valor)

#Desvio Padrão
sd(vendas$Valor)