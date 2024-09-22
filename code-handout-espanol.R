################################################
# Lección 00 - Antes de comenzar
################################################

# 1. Inicia RStudio.
# 2. En el menú `Archivo`, haz clic en `Nuevo Proyecto`. Elige `Nuevo Directorio`, luego `Nuevo Proyecto`.
# 3. Ingresa un nombre para esta nueva carpeta (o "directorio"), y elige la carpeta donde descargaste los archivos de nuestro taller.
#    Esta será tu **directorio de trabajo** para el resto del día (por ejemplo, `~/Intro_to_R_NRN_2024`).
# 4. Haz clic en `Crear Proyecto`.
# 5. Abre el archivo 'code_handout.R'. Este será nuestra hoja de código para el taller.
# 6. (Opcional) Configura las Preferencias para 'Nunca' guardar el espacio de trabajo en RStudio.




################################################
# Lección 01 - Introducción a R
################################################






### Creando objetos en R

















### Desafío
##
## ¿Cuáles son los valores después de cada declaración en lo siguiente?
##
## mass <- 47.5            # masa?
## age  <- 122             # edad?
## mass <- mass * 2.0      # masa?
## age  <- age - 20        # edad?
## mass_index <- mass/age  # índice de masa?




### Funciones y sus argumentos
# - Las funciones son guiones predefinidos que se ejecutan de una vez.
# - Una función tiene argumentos como entradas.
# - Una función a menudo devuelve un valor.
# - Las funciones se pueden importar a través de *paquetes*.





################################################
# How to make a Peanut Butter and Jelly Sandwich
################################################
# Ingredients
# - 2 slices of sandwich bread
# - Jelly
# - Peanut butter

# Instructions
# - Lay out two slices of bread
# - Spread 2tbsp of peanut butter on one slice of bread
# - Spread 2tbsp of grape jelly on the other slice of bread
# - Place the two pieces of bread together
# - Cut diagonal with a knife
# - Serve!

sd

round
?round











### Vectores y tipos de datos

weight_g <- c(50, 60, 65, 82)
weight_g



#### Caracteres, cadenas y comillas 

## ##  *Pista:* Verifica la clase de `plot_id`. Considera cambiar la clase
## ##  de `plot_id` de entero a factor. ¿Por qué este cambio afecta cómo R
## ##  genera el gráfico?


#### Objetos









typeof(weight_g)

## ## ### Desafío
## ## Hemos visto que los vectores atómicos pueden ser de tipo carácter, numérico, entero y
## ## lógico. Pero, ¿qué sucede si intentamos mezclar estos tipos en un único
## ## vector?
##
## ## ¿Qué sucederá en cada uno de estos ejemplos? (pista: usa `class()` para
## ## comprobar el tipo de datos de tu objeto)
## num_char <- c(1, 2, 3, "a")
##
## num_logical <- c(1, 2, 3, TRUE)
##
## char_logical <- c("a", "b", "c", TRUE)
##
## tricky <- c(1, 2, 3, "4")
##
## ## ¿Por qué crees que sucede?
##
##
## ## ¿Cuántos valores en `combined_logical` son `"TRUE"` (como un carácter) en el
## ## siguiente ejemplo:
## combined_logical <- c(num_logical, char_logical)
##
## ## Probablemente haya notado que los objetos de diferentes tipos se
## ## convierten en un único tipo compartido dentro de un vector. En R, llamamos
## ## convertir objetos de una clase a otra clase
## ## _coerción_. Estas conversiones ocurren de acuerdo con una jerarquía,
## ## por la cual algunos tipos se convierten preferentemente en otros tipos. ¿Puede
## ## dibujar un diagrama que represente la jerarquía de cómo se convierten estos tipos de datos?

#### Subconjunto de vectores












### Desafío (opcional)
##
## * ¿Puedes averiguar por qué `"cuatro" > "cinco"` devuelve `VERDADERO`?


## ### Desafío
## 1. Usando nuestro vector `weight_g` ¿puedes crear un subconjunto solo de los valores que sean menores o iguales a 34?
weight_g <- c(21, 34, 39, 54, 55)
##
## 2. Usando nuestro vector `weights_g` y la función `mean` calcula el peso medio con los valores 21 y 55 **no incluidos**
##
## 3. Usando nuestro vector `animals` devuelve donde los valores son iguales a rat, dog o cat
animals <- c("mouse", "rat", "dog", "cat", "cat")

## Datos faltantes









## ### Desafío
## 1. Utilizando este vector de alturas en pulgadas, crea un nuevo vector sin las NA.
##
alturas <- c(63, 69, 60, 65, NA, 68, 61, 70, 61, 59, 64, 69, 63, 63, NA, 72, 65, 64, 70, 63, 65)
##
## 2. Utiliza la función `median()` para calcular la mediana del vector `alturas`.
##
## 3. Utiliza R para averiguar cuántas personas del conjunto miden más de 67 pulgadas.



################## *NOTA* #########################
# Antes de comenzar el siguiente capítulo, quiero
# ver si las personas han creado una carpeta de datos
# ¿Este código devuelve el valor VERDADERO?

length(list.files(pattern='data'))>0
##################################################


################################################
# Lesson 02 - Empezando con los datos
################################################






### Cargando los datos de la encuesta



library(ratdat)
complete_old

### Lectura de datos en R

surveys <- read.csv("data/portal_data_joined.csv")
str(surveys)

### Leer CSV





### Data frames



##################################
# Funciones para inspeccionar data.frames
###################################
#- Tamaño:
#
# - `dim(surveys)` - devuelve un vector con la cantidad de filas en el
# primer elemento y la cantidad de columnas como el segundo elemento
# (las **dimensiones** del objeto)
# - `nrow(surveys)` - devuelve la cantidad de filas
# - `ncol(surveys)` - devuelve la cantidad de columnas
#
# - Contenido:
#
# - `head(surveys)` - muestra las primeras 6 filas
# - `tail(surveys)` - muestra las últimas 6 filas
#
# - Nombres:
#
# - `names(surveys)` - devuelve los nombres de las columnas (sinónimo de
# `colnames()` para los objetos `data.frame`)
# - `rownames(surveys)` - devuelve los nombres de las filas
#
# - Resumen:
#
# - `str(surveys)` - estructura del objeto e información sobre
# la clase, longitud y contenido de cada columna
# - `summary(surveys)` - estadísticas resumidas para cada columna
#################################




## Desafío
## A partir de la salida de `str(surveys)`, ¿puedes responder las siguientes preguntas?
##
## * ¿Cuál es la clase del objeto `surveys`?
## * ¿Cuántas filas y cuántas columnas hay en este objeto?
str(surveys)


## Indexación y creación de subconjuntos de data frames









### Desafíos:
###
### 1. Crea un `data.frame` (`surveys_200`) que contenga solo los
### datos de la fila 200 del conjunto de datos `surveys`.
###
### 2. ¿Observas cómo `nrow()` te dio la cantidad de filas en un `data.frame`?
###
### * Usa ese número para extraer solo esa última fila en el data frame
### * Compáralo con lo que ves como la última fila usando `tail()` para asegurarte
### de que cumple con las expectativas.
### * Extrae esa última fila usando `nrow()` en lugar del número de fila
### * Crea un nuevo objeto de marco de datos (`surveys_last`) a partir de esa última fila
###
### 3. Usa `nrow()` para extraer la fila que está en el medio del
### data frame. Almacene el contenido de esta fila en un objeto llamado
### `surveys_middle`.
###
### 4. Combine `nrow()` con la notación `-` anterior para reproducir el comportamiento de
### `head(surveys)`, manteniendo solo las filas primera a sexta del conjunto de datos de encuestas
###



### Factoras


## Los factores tienen:
# - Valores predefinidos
# - Estos valores tienen niveles.
# - Los valores que se les asignan, ya sea que tengan algún significado o no








## ## Desafío:
## ## Hay algunos errores en este `data.frame` hecho a mano,
## ## ¿Puedes detectarlos y corregirlos? ¡No dudes en experimentar!
## animal_data <- data.frame(
## animal = c(dog, cat, sea pepino, sea erizo),
## feel = c("furry", "squishy", "spiny"),
## weight = c(45, 8 1.1, 0.8)
## )



## ## Desafío:
## ## ¿Puedes predecir la clase de cada una de las columnas en el siguiente
## ## ejemplo?
## ## Comprueba tus suposiciones usando `str(country_climate)`:
## ## * ¿Son lo que esperabas? ¿Por qué? ¿Por qué no?
## ## * ¿Qué tendrías que cambiar para asegurarte de que cada columna tuviera el
## ## tipo de datos preciso?
## country_climate <- data.frame(country = c("Canada", "Panama", "South Africa", "Australia"),
## climate = c("cold", "hot", "temperate", "hot/temperate"),
## temperature = c(10, 30, 18, "15"),
## northern_hemisphere = c(TRUE, TRUE, FALSE, "FALSE"),
## has_kangaroo = c(FALSE, FALSE, FALSE, 1))

## ### Instalación de tidyverse
## # Antes de pasar a la siguiente lección, quiero asegurarme de que todos hayan instalado el paquete tidyverse
## # Ejecute el siguiente script si aún no lo ha hecho
## Esto debería ejecutarse sin errores
library(tidyverse)
## Si no se puede cargar, ejecute:
install.packages("tidyverse")




################################################
# Lección 03 - Manipulación, análisis y exportación de datos con tidyverse
################################################









### ¿Qué es dplyr?














### Pipes











## ## Pipes Desafío:
## ## Usando barras verticales, cree un subconjunto de los datos para incluir animales recolectados
## ## antes de 1995 y conserve las columnas `año`, `sexo` y `peso`.


### Mutate











## ## Mutate Challenge:
## ## Cree un nuevo data frame a partir de los datos de `surveys` que cumpla con los siguientes
## ## criterios: contiene solo la columna `species_id` y una nueva columna llamada
## ## `hindfoot_cm` que contiene los valores de `hindfoot_length` convertidos a centímetros.
## ## En esta columna `hindfoot_cm`, no hay `NA` y todos los valores son menores
## ## que 3.
##
## ## Sugerencia: ¡piense en cómo se deben ordenar los comandos para producir este marco de datos!


### división aplicación y combinación
















### Cálculo

















## ## Desafíos de recuento:
## ## 1. ¿Cuántos animales se capturaron en cada `plot_type` estudiado?
##
## ## 2. Use `group_by()` y `summarize()` para encontrar la media, el mínimo y el máximo
## ## largo de la pata trasera de cada especie (usando `species_id`). Agregue también el número de
## ## observaciones (pista: vea `?n`).
##
## ## 3. ¿Cuál fue el animal más pesado medido en cada año? Devuelva las
## ## columnas `year`, `genus`, `species_id` y `weight`.


### Exportando datos





## ### Cree el conjunto de datos para exportar:
## ## Comience por eliminar las observaciones para las que faltan los datos `species_id`, `weight`,
## ## `hindfoot_length` o `sex`:
## surveys_complete <- surveys %>%
## filter(species_id != "", # elimine el id de especie faltante
## !is.na(weight), # elimine el peso faltante
## !is.na(hindfoot_length), # elimine el hindfoot_length faltante
## sex != "") # elimine el sexo faltante
##
## ## Ahora elimine las especies raras en dos pasos. Primero, haz una lista de especies que
## ## aparecen al menos 50 veces en nuestro conjunto de datos:
##species_counts <- surveys_complete %>%
## count(species_id) %>%
## filter(n >= 50) %>%
## select(species_id)
##
## ## Segundo, mantén solo esas especies:
## surveys_complete <- surveys_complete %>%
## filter(species_id %in% species_counts$species_id)



################################################
# Lesson 04 - Data visualization with ggplot2
################################################

library(ggplot2)

library(ratdat)
surveys_complete <- complete_old
# surveys_complete <- read.csv("datos/portal_encuestas_completas.csv")


### Conspirando con ggplot2

# Para cada trama utilizamos la siguiente estructura: 
# ggplot(data = <DATA>, mapping = aes(<MAPPINGS>)) + <GEOM_FUNCTION>()











### Añadiendo otra variable



## ### Desafío 1: Modificación de gráficos:
## ##
## ## 1. Intenta modificar el gráfico de modo que la «forma» del punto varíe según el «sex».
## ## Establecerás la «forma» de la misma forma que estableces el «color».
##
## ## ¿Crees que esta es una buena forma de representar el «sex» con estos datos?
##
## ## ##
## ## 2. Ahora intenta cambiar el gráfico de modo que el «color» de los puntos varíe según el «year».
## ## ¿Notas una diferencia en la escala de colores en comparación con el cambio de color
## ## según el tipo de gráfico? ¿Por qué crees que sucedió esto?









## Boxplot













## Añadiendo geoms
















## ### Desafío 2: Modificación de gráficos:
## ##
## ## 1. Los gráficos de violín son similares a los gráficos de caja. Intenta 
## crear uno usando `plot_type` y `hindfoot_length` como variables x e y.
## Recuerda que todas las funciones geom
## ## comienzan con `geom_`, seguido del tipo de geom.
##
## ## A menudo resulta útil buscar `R package_name cosas que quieres buscar`.
## ## Por lo tanto, para este ejemplo, podríamos buscar `R ggplot2 violin plot`.
##
## ## ##
## ## 2. Haz que el color de los puntos y los contornos de los violines varíen según
## ## `plot_type` y establece el relleno de los violines en blanco. Intenta jugar con
## ## el orden de las capas para ver qué se ve mejor.





## Cambiando temas













## Cambiar etiquetas



## ### Desafío 3: Personalizar un gráfico:
## ##
## ## 1. Modifica el gráfico anterior añadiendo un subtítulo descriptivo.
## ## Aumenta el tamaño de fuente del título del gráfico y ponlo en negrita.
##
## ## **Sugerencia**: "bold" se refiere a una font "face"
##



## Faceting




## Exportación de parcelas







## ### Desafío 4: Crea tu propio gráfico:
## ##
## ## ¡Intenta crear tu propio gráfico! Puedes ejecutar `str(surveys_complete)` 
## o`?surveys_complete` para explorar las variables que podrías usar en tu nuevo gráfico.
## ## Siéntete libre de usar las variables que ya hemos visto, 
## o algunas que aún no hemos explorado.
##
## ## ##
## ## Aquí tienes un par de ideas para empezar:
## ##
## ## - crea un histograma de una de las variables numéricas
## ## - intenta usar un color diferente `scale_`
## ## - intenta cambiar el tamaño de los puntos o el grosor de las líneas en un `geom`
##
