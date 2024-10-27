anotimpuri <- c("Primavara", "Vara", "Toamna", "Iarna")
successful_cases <- 0
total_cases <- 0
set.seed(123)
for (i in 1:num_simulations) {
  copil1 <- list(gen = sample(genuri, 1), anotimp = sample(anotimpuri, 1))
  copil2 <- list(gen = sample(genuri, 1), anotimp = sample(anotimpuri, 1))
  if ((copil1$gen == "Fata" && copil1$anotimp == "Primavara") || 
      (copil2$gen == "Fata" && copil2$anotimp == "Primavara")) {
    total_cases <- total_cases + 1
    if ((copil1$gen == "Fata" && copil2$gen == "Fata")) {
      successful_cases <- successful_cases + 1
    }
  }
}
probabilitate_anotimp <- successful_cases / total_cases
cat(probabilitate_anotimp, "\n")
