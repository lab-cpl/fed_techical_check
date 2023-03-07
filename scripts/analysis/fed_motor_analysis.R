# Corre esta linea para encontrar el archivo de carga de bateria
file_name <- file.choose()

# Corre estas lineas para producir el grafico de carga de bateria
# recuerda que debes instalar el paquete pacman!
pacman::p_load(
    tidyverse,
    ggplot2
)
raw <- read_csv(file_name)
p1 <- raw %>% 
    ggplot(aes(
        motorTime
    )) +
    geom_histogram() +
    theme_bw() +
    ylab("Cuentas") +
    xlab("Tiempo para 100 pasos")
