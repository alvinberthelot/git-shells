#!/bin/sh

# Init repositories to fetch
REPOSITORIES=(
  "alvin=https://github.com/alvinberthelot/evaluate-git-noob"
  "Lecuit.Matteo=https://github.com/MountainJ44/evaluate-git-noob"
  "Guerin.Camille=https://github.com/Camilleguerin44/evaluate-git-noob"
  "Suchot.Alexandre=https://github.com/Speleize/evaluate-git-noob"
  "Vaucard.Adrien=https://github.com/adrienvaucard/evaluate-git-noob"
  "Le-Roy-Nivot.Mathis=https://github.com/MathisLeRoyNivot/evaluate-git-noob"
  "David.Marceau=https://github.com/marceaudavid/evaluate-git-noob"
  "Lafrechoux.Elouan=https://github.com/louloulfx/evaluate-git-noob"
  "Vera.Samy=https://github.com/5amyVera/evaluate-git-noob"
  "Teillais.Johan=https://github.com/BobbyKai/evaluate-git-noob"
  "Rigaudeau.Leo=https://github.com/leorigaudeau/evaluate-git-noob"
  "Delreux.Pierre=https://github.com/Cerafest/evaluate-git-noob"
  "Maisonneuve.Henry=https://github.com/Kwoak/evaluate-git-noob"
  "Letembet-Ambily.Christian=https://github.com/christianletembet/evaluate-git-noob"
  "Battais.Erwan=https://github.com/Erwan199/evaluate-git-noob"
  "Drouet.djimy=https://github.com/tazzeur/evaluate-git-noob"
  "Crochet.Olivier=https://github.com/OlivierCrochet/evaluate-git-noob"
  "Joulie.Antonin=https://github.com/PandAntonin/evaluate-git-noob"
  "Cambert.Killian=https://github.com/killiancambert/evaluate-git-noob"
  "Vadillo.Matthieu=https://github.com/matthaeuuus/evaluate-git-noob"
  "Girard.François=https://github.com/francoisg27/evaluate-git-noob"
  "Potier.Tanguy=https://github.com/tanguy85/evaluate-git-noob"
  "Carreau.Baptiste=https://github.com/Sarnek62/evaluate-git-noob"
  "Remaud.Sebastien=https://github.com/sebastienremaud/evaluate-git-noob"
  "Bigeard.Robin=https://github.com/Bigeard/evaluate-git-noob"
  "Guillard.Corentin=https://github.com/CorentinGlrd5/evaluate-git-noob"
  "Scheidecker.Romain=https://github.com/CHILIcranberry/evaluate-git-noob"
  "Guibert.Valentin=https://github.com/valentingbt/evaluate-git-noob"
  "Savelier.valentin=https://github.com/valentinsavelier/evaluate-git-noob"
  "Reillon.Antonin=https://github.com/entow/evaluate-git-noob"
  "Retiere.Evan=https://github.com/EpicZazaMan/evaluate-git-noob"
  "Bernard.Alexandre=https://github.com/WarriorPercy/evaluate-git-noob"
  "Halluin.Allan=https://github.com/SeidenSensei/evaluate-git-noob"
)

CloneRepository () {
  echo "\033[33mCloning ${2}\033[0m"
  git clone $1 $2
  ret=$?
  if ! test "$ret" -eq 0; then
    echo "\033[31mCloning ${1} failed\033[0m\n"
  else
    echo "\033[32mCloning ${1} done\033[0m\n"
  fi
}

# Get directory name
echo "\n\033[36mWhat's the name of the directory you want to group forks ?\033[0m\n"
read directoryname

Build directory
mkdir $directoryname && cd $directoryname
echo "\n\033[35mDirectory $directoryname built\033[0m\n"

# Clone repositories
for repository in "${REPOSITORIES[@]}"; do
  ALIAS=${repository%%=*}
  URL=${repository#*=}
  CloneRepository ${URL} ${ALIAS}
done

echo "\n\033[35mScript finished\033[0m\n"
