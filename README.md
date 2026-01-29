# Projet Pyramide - Labyrinthe 3D

## 📌 Description du Projet
Le **Projet Pyramide** est une application de modélisation 3D simulant une exploration immersive au sein d'une pyramide égyptienne.  
La structure est composée de plusieurs labyrinthes de tailles décroissantes empilés les uns sur les autres.  
Le joueur doit naviguer à travers ces étages tout en évitant des momies qui se déplacent de manière aléatoire.

---

## 🎮 Fonctionnalités

### Exploration et Gameplay
- **Vue à la première personne** : Immersion totale avec une caméra dynamique rappelant le style de Minecraft.  
- **Système d'étages** : Passage automatique à l'étage supérieur une fois la sortie du labyrinthe actuel atteinte, jusqu'au sommet de la pyramide.  
- **Ennemis** : Présence de momies bloquant le passage. Si une momie attrape le joueur, la partie se termine.  
- **Ambiance** : Intégration d'une musique égyptienne et de textures personnalisées pour les murs, le sable et le ciel.  

### Outils d'Orientation et Bonus
- **Mini-map interactive** : Carte en temps réel qui s'actualise avec les déplacements du joueur.  
- **Boussole dynamique** : Indique l'orientation du joueur (Nord, Sud, Est, Ouest).  
- **Effets lumineux** : Boules de feu éclairant le chemin, changeant de couleur (jaune à proximité, rouge "sang" en s'éloignant).  
- **Vue Extérieure Libre** : Mode "monde ouvert" permettant d'explorer les alentours de la pyramide.  

---

## ⌨️ Commandes

| Touche | Action |
|--------|--------|
| Flèches directionnelles | Déplacement du joueur dans le labyrinthe |
| 'o' puis 'I' | Activer la vue extérieure (FreeCam) |
| 'i' | Revenir à l'intérieur du labyrinthe |

---

## 🛠️ Détails Techniques
- **Structure des données** : Utilisation de tableaux multidimensionnels pour gérer l'empilement des niveaux (`char labyrinthe[][][]`).  
- **Rendu** : Optimisation de l'affichage des murs via un tableau de `PShape` et des boucles `for`.  
- **Modélisation de la Momie** : Créée à l'aide de techniques de simulation de ressorts pour les bandages et de fichiers `.obj` (`hand1.obj`, `hand2.obj`) pour les mains.  

---

## 👥 Auteurs
- Melina Adel Ramanankieferana  
- Lafatra Julio  

**Encadrant** : M. Julien Berry

