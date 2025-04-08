#Modélisation Malthus
#Variables
population_init <- 100000
tx_nat <- 0.4
temps <- 1:100
population <- numeric(length(temps))

#Evolution année après année
population[1] <- population_init

for(annee in 1:(length(temps)-1)){
    if(population[annee] > 150000){
        tx_mort <- 0.6
        }else{
        tx_mort <- 0.3
        }
    population[annee+1] <- population[annee] - population[annee]*tx_mort + population[annee]*tx_nat
    }
#Affichage des valeurs

png("malthus.png", width = 900, height = 800)
plot(temps,
     population,
     main = "Evolution de la population en fonction du temps",
     xlab = "Année",
     ylab = "Population",
     col = "blue",
     type = "l"
     )
dev.off()