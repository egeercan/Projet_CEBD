import tkinter as tk
from utils import display
from tkinter import ttk

class Window(tk.Toplevel):
    def __init__(self, parent):
        super().__init__(parent)

        # Définition de la taille de la fenêtre, du titre et des lignes/colonnes de l'affichage grid
        display.centerWindow(800, 600, self)
        self.title('Q6 : Records de températures historiques pour la zone H1 en 2018')
        display.defineGridDisplay(self, 2, 1)
        ttk.Label(
            self,
            text=(
                "On souhaite tracer un graphique pour comparer les températures des départements de la zone "
                "climatique H1 en 2018 avec les records de températures historiques enregistrés dans notre base "
                "de données pour l’ensemble du pays, pour chaque jour de l’année.\n\n"
                "Pour l’ensemble de cet exercice, seules les données de la colonne temperature_moy_mesure de "
                "la table Mesures seront prises en compte.\n\n"
                "On souhaite afficher ces données sur le même graphique, avec les 4 courbes suivantes :\n"
                "    - Les records de fraîcheur historiques pour chaque jour de l’année (toutes années confondues, toutes zones climatiques confondues).\n"
                "    - Les records de chaleur historiques pour chaque jour de l’année (toutes années confondues, toutes zones climatiques confondues).\n"
                "    - Les températures du département le plus froid de la zone H1 pour chaque jour de l’année 2018.\n"
                "    - Les températures du département le plus chaud de la zone H1 pour chaque jour de l’année 2018.\n\n"
                "Les départements les plus froids et les plus chauds de la zone H1 sont ceux pour lesquels la "
                "moyenne de leurs températures sur l’année 2018 est respectivement la plus basse et la plus élevée.\n\n"
                "Pour tracer le graphique, basez-vous sur le code fourni en exemple dans F4. Attention, seule la "
                "requête SQL doit être modifiée dans le code que vous reprendrez de F4. Vous ne devez pas modifier "
                "le code de génération du graphique.\n\n"
                "Indication : travaillez indépendamment sur chaque courbe demandée. Le plus difficile sera de rassembler "
                "les données nécessaires pour tracer les 4 courbes dans une même requête."
            ),
            wraplength=700,
            anchor="center",
            font=('Helvetica', '10', 'bold')
        ).grid(sticky="we", row=0)
