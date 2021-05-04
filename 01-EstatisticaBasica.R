setwd("C:/curso-dsa/scriptsR")
getwd()

vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

#Resumo do Dataset
View(vendas)
str(vendas)
summary(vendas$Valor)
summary(vendas$Custo)

#Media
?mean
mean(vendas$Valor)
mean(vendas$Custo)

#Media Ponderada
?weighted.mean
weighted.mean(vendas$Valor, w = vendas$Custo)

#Mediana
median(vendas$Valor)
median(vendas$Custo)

#Moda
#Criando funcao
moda <- function(v) {
  valor_unico <- unique(v)
  valor_unico[which.max(tabulate(match(v, valor_unico)))]
}

#Obtendo a Moda
resultado <- moda(vendas$Valor)
print(resultado)

resultado <- moda(vendas$Custo)
print(resultado)


#Criando grafico de Media de Valor por Estado com ggplot2
install.packages("ggplot2")
library(ggplot2)

#Cria o grafico
ggplot(vendas) +
  stat_summary(aes(x = Estado,
                   y = Valor),
               fun = mean,
               geom = "bar",
               fill = "lightgreen",
               col = "grey50") +
  labs(title = "Media de Valor por Estado")
