# Charger les packages nécessaires
library(ggplot2)

# Lire les données
data <- read.csv("./data/temperatures.csv")

# Convertir 'Mois' en facteur avec les niveaux dans l'ordre correct
data$Mois <- factor(data$Mois, levels = c("Janvier", "Février", "Mars", "Avril", "Mai", "Juin", 
                                          "Juillet", "Août", "Septembre", "Octobre", "Novembre", "Décembre"))

# Créer le graphique
ggplot(data, aes(x = Mois, y = Temperature)) +
  geom_line(aes(group = 1)) + # Ajouter une ligne, forcer tous les points à être considérés comme un seul groupe
  geom_point() + # Ajouter des points
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) + # Incliner les étiquettes des mois
  labs(title = "Températures moyennes par mois",
       x = "Mois",
       y = "Température (°C)")