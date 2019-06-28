
#To clean Console: Control + L

#Hola Mundo
mensaje<-"Hola mundo"
fecha<-date()
repeticiones<-5

print(fecha)
for (i in 1:repeticiones){
  print(mensaje)
}

#Basic Graph
atendidos <- c(728,632,596,689,745,865,694,583,657,643,794,887)
atendidos
class(atendidos) 
#Devuelve la clase, en este caso "numeric"
#ggplot2 graficos

#Time Line
plot(atendidos)
atendidos2 <- ts(atendidos,frequency=12,start=c(2009,1))
atendidos2
class(atendidos2)
plot(atendidos2)

#Library
library("plyr")
head(mutate(airquality, Ozone = -Ozone))

#Cast
a <- 2.15
b <- as.integer(a)
print(b)

#####################################################################################

#Factores

genero <- c("M", "H", "M", "M", "M", "H", "M", "M", "H", "H")
genero <- factor(genero)
class(genero)
print(genero)

table(genero)

produccion=c(120,100,132,112,95,164,172,183,155,176,110,115,122,108,120)
maquina=c(27,27,27,27,27,32,32,32,32,32,55,55,55,55,55)
dia=c(1,2,3,4,5,1,2,3,4,5,1,2,3,4,5)
matriz <- cbind(maquina,dia,produccion) #Une filas

maquina <- factor(maquina)
maquina

as.numeric(maquina)

as.numeric(as.character(maquina)) #Para recuperar valores originales

#####################################################################################

#Comparaciones

c <- 2
r <- 3

c==r
c>r
c<r
c<=r

c<=2 & c>1
c<=2 | c == 4

#####################################################################################

#Manejo de Posiciones 

edad <- c(22, 34, 29, 25, 30, 33, 31, 27, 25, 25)
edad
class(edad)

print(length(edad)) #La longitud es fija

edad[2]

s <- 1:10
s

s <- seq(1,20,by = 2)
s

s <- seq(1,20, length = 8)
s

edad[2:6]

edad[c(1,2,7)]

#####################################################################################

#Esta contenido en ....
x <- 5
y <- 1:10
x %in% y
x <- 1:5
x %in% y 

#####################################################################################

#Extraer con condicion

elegidos <- which(edad<30)
elegidos
edad[elegidos]

plot(factor(edad>30))


plot(table(edad<30))

edad[genero == "M"]

unique(genero)

table(edad)

#####################################################################################

#Characters

letras <- c("a","b","c","d")
class(letras)

paste("A","B",sep = "-")

#sep mantiene el valor

codigos <- paste(c("A", "B"), 2:3, sep = "") #Si 2:5 entonces "A2" "B3" "A4" "B5" 
codigos
class(codigos)

#Collapse une todo en uno 

paste(c("una", "frase", "simple"), collapse = " ")

letras <- "HOLA SEÑOR"

fin <- length(letras)
#substring
substr(letras, 6, nchar(letras)) <- "REYES"
substring(letras, 6, nchar(letras)) <- "Señor" 
letras

#####################################################################################

#nchar: cantidad de characters
nchar(letras)
#grep: Devuelve el index de los elementos buscados
grep("H", c("H","H","H","J","P","Ho"))
#match: Devuelve el primer index con el elemento correspondiente
match("H", c("H","H","H","J","P","H"))
match("H", c("Ho","H","H","J","P","H"))
#tolower: Devuelve las cadenas en lower case
tolower(letras)
#toupper: Devuelve las cadenas en upper case
toupper(letras)

#####################################################################################

#Paquete stringr

if (!is.element("stringr", installed.packages()[,1])){
  install.packages("stringr")
}
library(stringr)

#str_c = paste
str_c("Hola","Adios",sep = "-")
#str_length = nchar
str_length("Hola")
#str_dup: Duplica caracteres
str_dup("Hola", 2)
#str_trim: Remueve espacios blancos
nombre <- "  Hola Manuel  "
nombre
str_trim(nombre)

#####################################################################################

#Matrices 

#Crear Matriz
A <- matrix(nrow=3,ncol=3, c(1,2,3,4,5,6,7,8,9), byrow=TRUE) # 123/456/789 

A <- matrix(nrow=3,ncol=3, c(1,2,3,4,5,6,7,8,9), byrow=FALSE) #147/258/369

#Moverse en Matriz

A[2,3]   # Se selecciona el valor de la fila 2, columna 3

A[2,]    # Se selecciona la fila 2 completa

A[,3]    # Se selecciona la columna 3 completa

A[1,2:3] # Se seleccionan el segundo y tercer valor de la fila 1

#Tarea
A[c(1,3),]
A[1:2, 2:3]

#rbind (unir por filas) y cbind (unir por columnas) 

vector1 = c(1,2,3,4)
vector2 = c(5,6,7,8)
vector3 = c(9,10,11,12)
M1 = cbind(vector1,vector2,vector3) # Unimos por columnas
M2 = rbind(vector1,vector2,vector3)
M1 
M2

#Operaciones

#Diagonal Principal
diag(A)
#Muestrar una diagonal con los elementos de un conjunto
diag(c(1,2,3,4))
#Matriz traspuesta
t(A)
#Determinante de una matriz
det(A)
#Asigna un valor en la diagonal de una matriz de n rows
diag(1,nrow=4)
#Sumar entero a todos los valores
A+2
#Multiplicar matrices
A*t(A) #TODO DUDAAAAA
A%*%t(A)
diag(1, nrow = 3)%*%diag(2, nrow = 3)
#Inversa de una matriz
solve(A) 
solve(diag(c(1,1,1,1)))
#Autovalores y autovectores
eigen(A)

#####################################################################################

#Data.frame

edad <- c(22, 34, 29, 25, 30, 33, 31, 27, 25, 25)
tiempo <- c(14.21, 10.36, 11.89, 13.81, 12.03, 10.99, 12.48, 13.37, 12.29, 11.92)
sexo <- c("M","H","H","M","M","H","M","M","H","H")
misDatos <- data.frame(edad,tiempo,sexo)
misDatos

str(misDatos)    # Estructura de 'misDatos'

misDatos$edad #obtener parte

names(misDatos)  # Nombre de las variables contenidas en 'misDatos'

#Convertir una matriz en data.frame

str(M1)

M2<-as.data.frame(M1)
str(M2)
M2

#Acceso a variables

misDatos[3:6,] #Mostrar solo las personas de las filas 3 a 6.

misDatos[,1] #Mostrar solo la edad de las personas.

misDatos$edad #Otra manera de mostrar solo la edad de las personas.

misDatos[,"edad"] #Otra manera de mostrar solo la edad de las personas.

#Tarea

medidas <- data.frame(longitud=c(6,4,7), peso=c(240,326,315), diametro=c(8,9,9))
medidas
with(medidas,{
  volumen <- longitud*pi*(diametro/2)^2  # Calcula el volumen de los objetos
  densidad <- peso/volumen               # Calcula su densidad
  densidad                            # Muestra los valores de densidad #Solo muestra el ultimo
  })

#Subsets o subgrupos

hombres <- subset(misDatos,sexo=="H")
hombres

mujeres <- subset(misDatos,sexo=="M")
mujeres

mayores <- subset(misDatos,sexo=="H" & edad>30)
mayores

jov_habladores <- subset(misDatos,sexo=="H" & edad<30 & tiempo>12)
jov_habladores

extremos <- subset(misDatos,edad<25|edad>30)
extremos

hombres <- subset(misDatos,sexo=="H", select=c(edad, tiempo))
hombres

#Tarea

mujeres <- subset(misDatos, sexo == "M" & (edad>25 & 50>edad))
mujeres

tiempos <- mujeres$tiempo

promedio <- sum(tiempos)/length(mujeres)

#Eliminar repetidos = merge()

animales1 <- data.frame(animal=c("vaca","perro","rana","lagarto","mosca","jilguero"), 
                        clase=c("mamífero","mamífero","anfibio","reptil","insecto","ave"))
animales2 <- data.frame(animal=c("atún", "cocodrilo", "gato","rana"), clase=c("pez", "reptil", "mamífero","anfibio"))

animales3 <- rbind(animales1,animales2)

animales4=merge(animales1,animales2) #Muestra solo los que tienen en comun
animales5=merge(animales1,animales2,all=TRUE) #Muestra todos sin repetidos

superficieAnimales=data.frame(animal=c("perro","tortuga","jilguero", 
                                       "cocodrilo","vaca","lagarto","sardina"),
                              superficie=c("pelo","placas óseas","plumas",
                                           "escamas","pelo","escamas","escamas"))

merge(animales3,superficieAnimales) # Muestra sólo los animales comunes a ambos dataframes


merge(animales3,superficieAnimales, all.x=TRUE) # Muestra todos los animales del primer dataframe.

merge(animales3,superficieAnimales, all.y=TRUE) # Muestra todos los animales del segundo dataframe.


#Ordenar data.frame

ordenacion <- order(animales1$animal) # Posiciones dentro del dataframe 'animales1' de los animales ordenados alfabéticamente

animales1 <- animales1[ordenacion,]  # Se reordenan las filas del dataframe animales1

animales1 <- animales1[order(animales1$animal),]  # lo mismo pero en una sola línea de código.

misDatos <- misDatos[order(misDatos$edad,misDatos$tiempo),]

#Table() en matrices

table(misDatos[,"sexo"])

table(misDatos[,c("sexo", "edad")]) #En tables es al reves (columnas, categorias) q en las matrices y los data.frame 

plots <- plot(table(misDatos[,c("sexo", "edad")]))

#####################################################################################

#Listas

A <- matrix(1:9,nrow=3)
M <- matrix(1,4,nrow=2)
MiLista <- list(misDatos,A,M=M,x=c(1,2,3,4),e=exp(1)) #list(aqui van todos los contenidos)

MiLista$misDatos #NULL por no estar nombrado en la lista : x = misDatos

MiLista[[1]] 

MiLista$A #NULL por no estar nombrado en la lista : x = A

MiLista[[2]]

MiLista$M

MiLista$x

contraste <- t.test(tiempo~sexo, data=misDatos) # class -> htest
str(contraste)

contraste$conf.int # variacion o intervalo de confianza

#####################################################################################

# Coercion
# “forzar” (“coerce”) la conversión de una clase de datos en otra, 
#  mediante comandos de la forma as.class

x="1"
x

class(x)

y=as.integer(x)
y

class(x)

z=as.character(y)
z

class(z)

#####################################################################################

#Operaciones Basicas

a <- c(1,2,3,4)

# operaciones entre escalares y arreglos:
a + 5

a*4

b <- a - 10
sqrt(a)

log(a)

# operaciones sobre arreglos: 
c <- sort(a)
d <- sort(a,decreasing = TRUE)
min(a)

e <- c(TRUE,FALSE,FALSE,TRUE) #inavilita elementos
a[e]

a <- c(10,20,30,40,NA)
sum(a)

sum(a, na.rm = TRUE) # el parámetro na.rm = TRUE significa que no se 
                     # deben tener en cuenta los valores NA

is.na(a) # FALSE FALSE FALSE FALSE  TRUE

a[!is.na(a)]

b <- a[!is.na(a)]
b <- a[a<6]


#Funciones Matematicas

x <- 1

x^2

log(x)

3*x

1/exp(x)

#Algunas Funciones

# cargar números reales hasta que se presione Enter, y guardarlos en la variable a:
a<-scan(what=double(0))


#Tarea

help(repeat)


help(break)


help(next)


help(switch)

#Tarea

i <- 1
repeat{ #Loop
  if(i==5 | i==8){
    i <- i+1
    next #Siguiente
  }
  
  if(i>10)
    break #Rompe loop
  
  print(i)
  
  str(switch(i, MiLista, "hh", c(2,3,4))) #Busca en los elementos el q se relaciona
  
  i <- i + 1
}

#####################################################################################

# Algunos conceptos algorítmicos en R

# Flujos de control

#El IF

x <- 0.1
if( x < 0.2)
{
  x <- x + 1
  cat("Incremento el número!\n") #Print pero "comprimido" y optimizado/ no salta linea
}
if( x == 0)
{
  cat("El número vale 0!\n")
} else {
  cat("El número es distinto a 0\n")
}
x

#El FOR

# op1:
for(cont in (1:10)){
  print(paste0("Iteración número: ",cont)) #similar al foreach
}

# op2:
for (cont in seq(0,1,by=0.3)){
  print(paste0("Iteración número: ",cont)) #otro foreach pero con seq
}

# op3:
x <- c(1,2,4,8,16)
for (loop in x)
{
  cat("Valor de la iteración: ",loop,"\n"); #Lo mismo
}

#otro for

for(p in 1: 10){
  print(paste0("Iteración número: ",p))
}

#El WHILE

lupe <- 1
x <- 1
while(x < 4)
{
  x <- rnorm(1,mean=2,sd=3) #toma una muestra random de una distribucion normal (n muestras, mu, variacion standard)
  cat("trying this value: ",x," (",lupe," times in loop)\n");
  lupe <- lupe + 1
}


# Funciones Apply

# apply(M,i,fun): si i vale 1, aplica la función fun a todas las filas de la matriz M; si `i vale 2, la aplica a las columnas.

A = matrix(runif(50),nrow=10) # Matriz de dimensión 10x10 cuyos elementos son valores
# aleatorios con distribución uniforme en (0,1) / osea mu = 0, variacion = 1
A

sumCuadrados=function(x){sum(x^2)}  # Función que calcula la suma de cuadrados de 
# los términos de un vector x
apply(A,1,sumCuadrados)  # Devuelve la suma de cuadrados de cada fila de A

apply(A,2,sumCuadrados)  # Devuelve la suma de cuadrados de cada columna de A

#lapply(L,fun): aplica la función fun a todos los elementos de la lista L. 
#El resultado se devuelve también en una lista.

# sapply(L,fun): al igual que lapply(), aplica la función fun a todos los 
#elementos de la lista L, pero devuelve el resultado en forma de vector o matriz

# tapply(variable,factor,fun): aplica la función fun a cada uno de los grupos 
# de datos de variable definidos por los niveles de factor.

grupo=data.frame(edad=c(12,13,12,11,13,14,15,11),sexo=c("H","M","H","H","M","H","M","H"))
tapply(grupo$edad,grupo$sexo,mean) # Edad media para cada sexo -> mean
t.test(edad~sexo,grupo)

#####################################################################################

#Funciones

suma <- function(x,y){
  # suma de los elementos "x" e "y”
  x+y
}

hipotenusa<-function(cateto1, cateto2){
  h<-sqrt(cateto1^2+cateto2^2)
  list(cateto1=cateto1,cateto2=cateto2,hipotenusa=h)
}

#source('misFunciones.R') invocar funciones

#Tarea
valorAbsoluto <- function(x){
  abs(x)
}



