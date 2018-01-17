#!/bin/sh

# Init repositories to fetch
REPOSITORIES=(
  "alvin=https://github.com/alvinberthelot/git_2018_B1"
  "Lecuit.Matteo=https://github.com/MountainJ44/git_2018_B1"
  "Guerin.Camille=https://github.com/Camilleguerin44/git_2018_B1"
  "Suchot.Alexandre=https://github.com/Speleize/git_2018_B1"
  "Vaucard.Adrien=https://github.com/adrienvaucard/git_2018_B1"
  "Le-Roy-Nivot.Mathis=https://github.com/MathisLeRoyNivot/git_2018_B1"
  "David.Marceau=https://github.com/marceaudavid/git_2018_B1"
  "Lafrechoux.Elouan=https://github.com/louloulfx/git_2018_B1"
  "Vera.Samy=https://github.com/Shaggermeister/git_2018_B1"
  "Teillais.Johan=https://github.com/BobbyKai/git_2018_B1"
  "Rigaudeau.Leo=https://github.com/leorigaudeau/git_2018_B1"
  "Delreux.Pierre=https://github.com/Cerafest/git_2018_B1"
  "Maisonneuve.Henry=https://github.com/Kwoak/git_2018_B1"
  "Letembet-Ambily.Christian=https://github.com/christianletembet/git_2018_B1"
  "Battais.Erwan=https://github.com/Erwan199/git_2018_B1"
  "Drouet.djimy=https://github.com/tazzeur/git_2018_B1"
  "Crochet.Olivier=https://github.com/OlivierCrochet/git_2018_B1"
  "Joulie.Antonin=https://github.com/PandAntonin/git_2018_B1"
  "Cambert.Killian=https://github.com/killiancambert/git_2018_B1"
  "Vadillo.Matthieu=https://github.com/matthaeuuus/git_2018_B1"
  "Girard.François=https://github.com/francoisg27/git_2018_B1"
  "Potier.Tanguy=https://github.com/tanguy85/git_2018_B1"
  "Carreau.Baptiste=https://github.com/Sarnek62/git_2018_B1"
  "Remaud.Sebastien=https://github.com/sebastienremaud/git_2018_B1"
  "Bigeard.Robin=https://github.com/Bigeard/git_2018_B1"
  "Guillard.Corentin=https://github.com/CorentinGlrd5/git_2018_B1"
  "Scheidecker.Romain=https://github.com/CHILIcranberry/git_2018_B1"
  "Guibert.Valentin=https://github.com/valentingbt/git_2018_B1"
  "Savelier.valentin=https://github.com/valentinsavelier/git_2018_B1"
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
