library(readxl)
precios <- read_excel("C:/Users/SALA/Downloads/precios.xlsx")## Funcion para agregar excel en r.
#View(precios)


names(precios)#Nombre de las columnas de las bd


## cuartiles en r quantile()

quantile(precios, probs = 0.25,0.5,0.75)## Los numeros de cuartil siempre son los mismos
q1 <- quantile(precios$precios, probs = 0.25)
q2 <- quantile(precios$precios, probs = 0.5)
q3 <- quantile(precios$precios, probs = 0.75)## El signo $ hace referencia a que 
#en la base precios busque la tabla precios. 


#Calcular los extremos y rango intercuartico

Linf <- q1-(1.5*(q3-q1)) # Limite inferior
Lsup <- q3+(1.5*(q3-q1)) # Limite superior

#Calcular minimo
minimoValor <- min(precios$precios)

#Calcular maximo
maximoValor <- max(precios$precios)


#Comparar limite inferior con el valor minimo
minimoValor < Linf # Si es menor saldra False es un valor atipico y tiende a quedar fuera del rango 

#Comparar limite maximo con el valor minimo
maximoValor > Lsup # 

# Generar grafica de caja
ggplot(precios, aes(x = 0, y = precios, color=precios)) + geom_boxplot(fill = "lightblue") 
ggplot(precios, aes(x = 0, y = precios)) + geom_boxplot(fill = "lightgreen") + 
  geom_boxplot()+coord_flip()+ggtitle("Distribucion precios de autos") 
ggplot(precios, aes(x = precios, y = 0, color=precios)) + geom_boxplot(fill = "lightgreen") 

16+(1.5*(16-10))
10-(1.5*(16-10))

