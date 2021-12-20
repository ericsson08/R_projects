print("Hello World!")

library(datos)
library(plotly)
library(htmlwidgets)
library(ggplot2)

?datos
millas
head(millas)


## EJERCICIO 1.1.

##fig <- plot_ly(data = millas, x = ~autopista, y = ~cilindrada, color = ~modelo)

###htmlwidgets::saveWidget(as.widget(fig), "test.html")


fig_1 <- ggplot(data = millas, mapping = aes(x =autopista, y = cilindrada)) + 
  geom_point() +
  labs(title = "Consumo en función de cilindrada"
       , x = "autopista"
       , y = "cilindrada")
  
fig_1



## EJERCICIO 1.2.

fig_2 <- ggplot(data = millas, mapping = aes(x =autopista, y = cilindrada, color = modelo, shape = fabricante, size = anio)) + 
  geom_point() +
  scale_shape_manual(values=seq(0,15)) +
  labs(title = "Consumo en función de cilindrada"
       , x = "autopista"
       , y = "cilindrada")

fig_2

## EJERCICIO 1.3.

vec <- factor(c("8","5","9","8","1","7"))
print(vec)
vec_numeric <- as.numeric(as.character(vec))
print(vec_numeric)
vec_numeric_2 <- as.numeric(vec)
print(vec_numeric_2)
#le asigna numericamente a cada factor distinto un orden, sangoogle.

# EJERCICIO 1.4.

print(millas)
class(millas)

#df

obj <- cbind(millas$cilindrada,millas$cilindros)
print(obj)
class(obj)
#matrix     
                  
# EJERCICIO 1.5. Crea una función que tome un vector de tipo integer como input y 
#retorne un objetido de tipo lista que contega los siguientes elementos:
#1. El último valor del vector
#1. Los elementos de las posiciones impares.
#1. Todos los elementos excepto el primero.
#1. Solo números impares (y no valores faltantes).



ejercicio_5 <- function(input) {
  if (input == 1) {
    function_return <- vec[length(vec)]
  }
  if (input == 2){
    function_return <- vec[c(1,3,5)]
  }
  if (input == 3){
    function_return <- vec[2:length(vec)]
  }
  
  if (input == 4){
    numeric_vector <- as.numeric(as.character(vec))
    function_return <- subset(numeric_vector, numeric_vector %% 2 != 0)
  }
   return(function_return)
    

}

ejercicio_5(1)
ejercicio_5(2)
ejercicio_5(3)
ejercicio_5(4)
evens <- function(x) vec(x, x %% 2 == 0)
evens
evens <- function(x) subset(x, x %% 2 == 0)

residual(as.character(as.numeric(vec)))
# EJERCICIO 1.6
x <- c(NaN, 2)

x[-which(x > 0)]

x[x <= 0]

# EJERCICIO 1.7


millas$fabr_mod <- 1:nrow(millas)


millas$fabr_mod <- paste(millas$fabricante,"-",millas$modelo)
head(millas)

# EJERCICIO 1.8

ejercicio_8 <- subset(millas,fabricante != "dodge" & traccion == "4" & anio < 2008 & (ciudad <= 12 | autopista <= 12))
ejercicio_8

# EJERCICIO 1.9

obj <- as.data.frame(cbind(millas$cilindrada,millas$cilindros, NA))
colnames(obj) <- c("cilindrada","cilindros","vol_por_cil")
obj$vol_por_cil <- as.numeric(obj$cilindrada) / as.numeric(obj$cilindros)
print(obj)
#for(i in 1:nrow(obj)){
 # print(obj$cilindrada[i])
 # obj$ratio[i] <- as.numeric(obj$cilindrada[i]) / as.numeric(obj$cilindros[i])
#}



# EJERCICIO 1.10
ejercicio_10 <- obj

ejercicio_10$vol_por_cil <- ifelse ( ejercicio_10$vol_por_cil >= 0.7, NA, ejercicio_10$vol_por_cil)
print(ejercicio_10)

ejercio_10_1 <- subset(ejercicio_10, is.na(ejercicio_10$vol_por_cil))
print(nrow(ejercio_10_1))
summary(ejercicio_10$vol_por_cil)





# EJERCICIO 1.10