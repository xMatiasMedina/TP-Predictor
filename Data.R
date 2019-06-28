#Ingresos
library(readxl)
data201918 <- read_excel("/Users/matiasmedina/Documents/Programacion/R/INGRESO 2018-2019-ANON.xlsx")
data2018 <-  read_excel("/Users/matiasmedina/Documents/Programacion/R/INGRESO 2018-ANON.xlsx")
data2019 <- read_excel("/Users/matiasmedina/Documents/Programacion/R/INGRESO 2019-ANON.xlsx")

names(data2018) <- c("N*","Status", "Nombre", "Sexo", "Carrera", "Año de Ingreso", "Ingreso", "Nota Mat", 
                     "Rec. Mat", "Nota Fisica", "Rec. Fisica", "Prom. Ingreso", "Tipo de Beca", 
                     "Porsentaje Solicitado Beca", "Obtiene Beca", "Prom. Sec", "Porsentaje Otorgado",
                     "Colegio")


#Curar 2018

#BAJA
data2018$Status[data2018$Status == "BAJA NO VINO A RECUPERAR"] <- "BAJA"
data2018$Status[data2018$Status == "BAJA SE PASA A FCE"] <- "BAJA"
data2018$Status[data2018$Status == "Baja 2017"] <- "BAJA"
data2018$Status[data2018$Status == "BAJA PACT"] <- "BAJA"
data2018$Status[data2018$Status == "bAJA DESAPROBO RECUPERATORIO"] <- "BAJA"
data2018$Status[data2018$Status == "BAJA DESAPROBO RECUPERATORIO"] <- "BAJA"

#Matriculados
data2018$Status[data2018$Status == "Matriculado Agosto 2017"] <- "Matriculado"
data2018$Status[data2018$Status == "MATRICULADO EN SIA"] <- "Matriculado"
data2018$Status[data2018$Status == "Matriculado en SIA"] <- "Matriculado"

#Ingresos
data2018$Ingreso[data2018$Ingreso == "Ingreso Febrero MAT"] <- "Ingreso Febrero"
data2018$Ingreso[data2018$Ingreso == "Ingreso Directo (i feb)"] <- "Ingreso Directo"
data2018$Ingreso[data2018$Ingreso == "Ingreso Directo (i sep)"] <- "Ingreso Directo"
data2018$Ingreso[data2018$Ingreso == "Ingreso Directo (i oct)"] <- "Ingreso Directo"
data2018$Ingreso[data2018$Ingreso == "Ingreso Libre Febrero MAT"] <- "Ingreso Libre"
data2018$Ingreso[data2018$Ingreso == "Ingreso Libre Diciembre"] <- "Ingreso Libre"
data2018$Ingreso[data2018$Ingreso == "Ingreso Libre Febrero"] <- "Ingreso Libre"
data2018$Ingreso[data2018$Ingreso == "Ingreso Octubre Pilar"] <- "Ingreso Octubre"

#Becas

data2018$`Obtiene Beca`[data2018$`Obtiene Beca` == "falta doc y CI"] <- "NO"
data2018$`Obtiene Beca`[data2018$`Obtiene Beca` == "MO"] <- "NO"

data2018$`Obtiene Beca`[is.na(data2018$`Obtiene Beca`)] <- "NO"


#Colegios
#Esta hecho


#Curar 2019
names(data2019) <- c("N*","Status2", "Nombre", "Sexo", "Carrera", "Año de Ingreso", "Ingreso", "Nota Mat", 
                     "Rec. Mat", "Nota Fisica", "Rec. Fisica", "Prom. Ingreso", "Tipo de Beca", 
                     "Porsentaje Solicitado Beca", "Obtiene Beca", "Prom. Sec", "Porcentaje Otorgado","Status", "No sirve",
                     "Colegio")

data2019$Ingreso[data2019$Ingreso == "Curso Octubre Nordelta"] <- "Ingreso Octubre"
data2019$Ingreso[data2019$Ingreso == ""] <- "Cuatrimestral Full Time"
data2019$Ingreso[data2019$Ingreso == "Curso Febrero"] <- "Ingreso Febrero"
data2019$Ingreso[data2019$Ingreso == "Febrero Libre"] <- "Ingreso Febrero"
data2019$Ingreso[data2019$Ingreso == "Cuatrimestral Full Time 19"] <- "Cuatrimestral Full Time"
data2019$Ingreso[data2019$Ingreso == "Curso Septiembre"] <- "Ingreso Septiembre"
data2019$Ingreso[data2019$Ingreso == "Curso Octubre Pilar"] <- "Ingreso Octubre"
data2019$Ingreso[data2019$Ingreso == "Libre Diciembre"] <- "Ingreso Libre"
data2019$Ingreso[data2019$Ingreso == "Ingreso Directo (i cuatri)"] <- "Ingreso Directo"
data2019$Ingreso[data2019$Ingreso == "Curso Febrero MAT"] <- "Ingreso Febrero"
data2019$Ingreso[data2019$Ingreso == "Curso Septiembre (Libre)"] <- "Ingreso Septiembre"
data2019$Ingreso[data2019$Ingreso == "Curso Octubre Pilar"] <- "Ingreso Octubre"

data2019$`Obtiene Beca`[is.na(data2019$`Obtiene Beca`)] <- "NO"
data2019$`Obtiene Beca`[data2019$`Obtiene Beca` == "N/A"] <- "NO"
data2019$`Obtiene Beca`[data2019$`Obtiene Beca` == "NO OBTIENE"] <- "NO"
data2019$`Obtiene Beca`[data2019$`Obtiene Beca` == "BAJA"] <- "NO"
data2019$`Obtiene Beca`[data2019$`Obtiene Beca` == "Si"] <- "SI"
data2019$`Obtiene Beca`[data2019$`Obtiene Beca` == "BFI N/A"] <- "NO"
data2019$`Obtiene Beca`[data2019$`Obtiene Beca` == "NO OBTIENE pero se le da x ayuda"] <- "SI"
data2019$`Obtiene Beca`[data2019$`Obtiene Beca` == "NA"] <- "NO"
data2019$`Obtiene Beca`[data2019$`Obtiene Beca` == "?"] <- "NO"
data2019$`Obtiene Beca`[data2019$`Obtiene Beca` == "OBTIENE"] <- "SI"
data2019$`Obtiene Beca`[data2019$`Obtiene Beca` == "No"] <- "NO"

data2019$Status[data2019$Status == "A - MATRICULADO"] <- "Matriculado"


#Curar 201918
names(data201918) <- c("N*", "Año de Ingreso", "Nombre", "Sexo", "Colegio", "Nacionalidad","Provincia", 
                       "Zona", "Año de graduacion", "Carrera", "Ingreso", "Nota Fisica", "Nota Mat",
                       "Porcentaje Otorgado", "Prom. Sec", "Resultado de Ingreso")

#Carrera
data201918$Carrera[data201918$Carrera == "Ingeniería en Informática"] <- "INF"
data201918$Carrera[data201918$Carrera == "Ingeniería Industrial"] <- "IND"
data201918$Carrera[data201918$Carrera == "Ingeniería Biomédica"] <- "BIO"

#Ingreso

data201918$Ingreso[data201918$Ingreso == "Febrero en Pilar"] <- "Ingreso Febrero"
data201918$Ingreso[data201918$Ingreso == "Febrero (Sede Pilar)"] <- "Ingreso Febrero"
data201918$Ingreso[data201918$Ingreso == "Febrero (Sede Pilar)"] <- "Ingreso Febrero"
data201918$Ingreso[data201918$Ingreso == "Septiembre en Pilar"] <- "Ingreso Septiembre"
data201918$Ingreso[data201918$Ingreso == "Octubre en Pilar"] <- "Ingreso Octubre"
data201918$Ingreso[data201918$Ingreso == "Octubre en San Isidro"] <- "Ingreso Octubre"
data201918$Ingreso[data201918$Ingreso == "Examen Libre"] <- "Ingreso Libre" 





box <- merge(data2018, data201918, all = TRUE)
box <- merge(box, data2019, all = TRUE)
box$Status[is.na(box$Status)] <- "BAJA"
box <- box[,c("Status","Nombre","Sexo","Nacionalidad","Carrera","Ingreso","Año de Ingreso","Prom. Ingreso","Nota Mat","Nota Fisica",
              "Rec. Mat","Rec. Fisica","Tipo de Beca", 
              "Porsentaje Solicitado Beca","Porcentaje Otorgado",
              "Año de graduacion","Prom. Sec","Colegio")]
box$`Prom. Sec`[box$`Prom. Sec`==50] <- NA

View(box)


save(box, file = "Data.RData")
















data18 <- data.frame(nombres= data2018$Nombres, carrera = data2018$Carrera, colegios = data2018$Colegio.de..Procedencia, beca = data2018$Porcentaje..Otorgado)
data19 <- data.frame(nombres= data2019$Nombres, carrera = data2019$Carrera, colegios = data2019$Colegio.de..Procedencia, beca = data2019$Porcentaje..Otorgado)
data1819 <- data.frame(nombres= data201918$Nombre.completo, carrera = data201918$Carrera.de.grado, colegios = data201918$Nombre.de.Cuenta, beca = data201918$Porcentaje.beca.otorgada)

#Correcciones y Merge
levels(data1819$carrera) <- c("Ingeniero","BIO","INF","IND")
part1 <- merge(data18, data19, all = TRUE)
finalbox <- merge(part1, data1819, all = TRUE)


box$`Prom. Sec`[box$`Prom. Sec`==50] <- NA































#Por colegios
bySchools <- function(){
tab <- table(finalbox$colegios)
tab <- rev(sort(tab))
barplot(tab[1:8], space = 1, col = rainbow(finalbox$colegios))
}

#Por carrera
byCareerBar <- function(){
fc <- factor(finalbox$carrera)
barplot(table(fc)[1:3], col = c("Orange", "SkyBlue", "LightGreen"))
}
byCareerPie <- function(){
  fc <- factor(finalbox$carrera)
  pie(table(fc)[1:3], col = c("Orange", "SkyBlue", "LightGreen"))
}
#Tiene o no Beca
byDiscountBar <- function(){
  fc <- factor(finalbox$beca<0 | is.na(finalbox$beca))
  levels(fc) <- c("Beca", "No Beca")
  barplot(table(fc), col = c("Green", "SkyBlue"))
}

byDiscountPie <- function(){
  fc <- factor(finalbox$beca<0 | is.na(finalbox$beca))
  levels(fc) <- c("Beca", "No Beca")
  pie(table(fc), main = "Becas", col = c("Green", "SkyBlue"))
}

#Zwobada Canal Salinas esta dos veces en el mismo
#Hay un error de tipeo en el ultimo (Mr Ingeniero Solitario), un administrador menos porfa

#plotrixl


#PROBANDO PAQUETE GGPLOT2
#g <- ggplot(midwest, aes(x=area, y=poptotal)) + geom_point(aes(col=state), size=3) + geom_smooth(method="lm")
#g + xlim(c(0, 0.1)) + ylim(c(0, 1000000)) + scale_colour_brewer(palette = "Set1") 
#g1 <- g + coord_cartesian(xlim=c(0,0.1), ylim=c(0, 1000000))  # zooms in
#plot(g1)

#g1 + labs(title="Area Vs Population", subtitle="From midwest dataset", y="Population", x="Area", caption="Midwest Demographics")




#library(RColorBrewer)


coMatric <- function(x){
  if(x == c("Matriculado en SIA", "Matriculado Agosto 2017")[0:2]){
    x = "Matriculado"
  }
  if(x == c("BAJA NO VINO A RECUPERAR","BAJA SE PASA A FCE","BAJA DESAPROBO RECUPERATORIO", "Baja 2017",
            "BAJA PACT", "bAJA DESAPROBO RECUPERATORIO")[0:6]){
    x = "BAJA"
  }
  x
} 










