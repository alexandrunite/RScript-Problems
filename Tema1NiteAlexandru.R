num_simulations <- 100000

successful_cases <- 0
total_cases <- 0

zile_saptamana <- c("Luni", "Marti", "Miercuri", "Joi", "Vineri", "Sambata", "Duminica")
genuri <- c("Fata", "Baiat")
set.seed(123)  
for (i in 1:num_simulations) {
  copil1<-list(gen=sample(genuri,1), zi = sample(zile_saptamana,1))
  copil2<-list(gen=sample(genuri,1), zi = sample(zile_saptamana,1))

  if ((copil1$gen=="Fata"&&copil1$zi=="Miercuri") || 
      (copil2$gen=="Fata"&&copil2$zi=="Miercuri")) {

    total_cases<-total_cases+1

    if ((copil1$gen == "Fata"&&copil2$gen=="Fata")){
      successful_cases<-successful_cases+1
    }
  }
}

probabilitate <- successful_cases/total_cases
cat(probabilitate, "\n")

