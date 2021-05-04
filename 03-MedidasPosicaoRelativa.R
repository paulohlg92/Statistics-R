setwd("C:/curso-dsa/scriptsR")
getwd()

vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

#Resumo do Dataset
View(vendas)
str(vendas)
summary(vendas$Valor)

#Resumo dos dados
head(vendas) #Primeiras linhas
tail(vendas) #Ultimas linhas
View(vendas)

#Medidas de Tendencia Central
summary(vendas$Valor)
summary(vendas[c('Valor', 'Custo')])

#Explorando variaveis numericas
mean(vendas$Valor)
median(vendas$Valor)
quantile(vendas$Valor)
quantile(vendas$Valor, probs = c(0.01, 0.99))
quantile(vendas$Valor, seq(from = 0, to = 1, by = 0.20))
IQR(vendas$Valor) # Diferença entre Q3 e Q1
range(vendas$Valor)
summary(vendas$Valor)
diff(range(vendas$Valor))