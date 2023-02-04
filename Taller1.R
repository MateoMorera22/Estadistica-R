#Taller 1 

a <- 1
b <- 10


#Ejercicio 1
objetoSeq <- seq(a,b)
objetoSeq2 <- a:b


#Ejercicio 2
operacion <- objetoSeq*10


#Instalar libreria
#install.packages("dplyr")
#library(dplyr)

#Punto 3
is(a) ## Indica el tipo de dato y si este es en un arreglo como en este caso un vector unidimensional.
objects() ## muestras todos los valores/objetos creados,

lista1 <- list(objetoSeq)

lista1 #

#Punto 4
rm(list = "a") ##Elimina los objetos o un objeto puntual.
rm(list = ls())


#Punto 5
getwd()## Nos muestra la ruta donde se esta ejecutando el proyecto o el script.