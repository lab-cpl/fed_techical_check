# Corre esta linea para encontrar el archivo de carga de bateria
file_name <- file.choose()

# Corre estas lineas para producir el grafico de carga de bateria
# recuerda que debes instalar el paquete pacman!
pacman::p_load(
    tidyverse,
    ggplot2
)
raw <- read_csv(file_name)
df <- raw %>% 
    select(time, battery) %>% 
    mutate(
        time = time - lag(time, default = NA),
        time = replace_na(time, 0),
        time_acc = cumsum(time)
    )
p1 <- df %>% 
    ggplot(aes(
        time_acc, battery
    )) +
    geom_line() +
    theme_bw() +
    ylab("Bateria") +
    xlab("Tiempo")
