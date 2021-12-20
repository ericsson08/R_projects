
#ASIGNAR OBJETOS

a <- 0
a

b <- a + 1
b

#LISTAR OBJETOS

ls()

#GUARDAR OBJETOS

save(a,b, file="www/ejemploSave.RData")

#BORRAR OBJETOS

rm(a,b)
rm(list=ls()) #borra todo el environment
ls()

#FUNCIONES

describir <- function() {
  plot(pressure)
}

describir()

#se recomienda utilizar verbos

#PARAMETROS DE ENTRADA

mi_funcion <- function(parametro1, parametro2)
{}

describir <- function(data, type, col = 'red', ...)  {
  plot(data, type = type, col = col, ...)
}

#type: "p" indica puntos, "l" lineas
#col: colores
#...: permite añadir parametros nuevos

#PARA LLAMAR LA FUNCION

describir(pressure, type="l", main = "Presion de vapor del mercurio"
          , xlab = "temperatura (ºC)",ylab = "Presión", cex.main =1)

#SALIDA DE LA FUNCIÓN

describir <- function(data, type, col = 'red', ...)  {
  plot(data, type = type, col = col, ...)
  return(summary(data))
}

resumen <- describir(pressure, type="l", main = "Presion de vapor del mercurio"
                     , xlab = "temperatura (ºC)",ylab = "Presión", cex.main =1)

resumen