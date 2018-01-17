#!/bin/sh

# Init repositories to fetch
REPOSITORIES=(
  "alvin=https://github.com/alvinberthelot/workshop-node-js-eval-beginner"
  "Aubry.Mathis=https://github.com/mathisaubry1/workshop-node-js-eval-beginner"
  "Poultier.Samuel=https://github.com/sampoultier/workshop-node-js-eval-beginner"
  "Caumes.Kirian=https://github.com/KirianCaumes/workshop-node-js-eval-beginner"
  "Chéné.Pierre=https://github.com/yolocodefrench/workshop-node-js-eval-beginner"
  "Dupont.Malo=https://github.com/MDupdup/workshop-node-js-eval-beginner"
  "Mahé.Thomas=https://github.com/Ryokher/workshop-node-js-eval-beginner"
  "Genouin-Duhamel.Antoine=https://github.com/AntoineYnov/workshop-node-js-eval-beginner"
  "Barreau.Killian=https://github.com/KillianB/workshop-node-js-eval-beginner"
  "Hecht.Guillaume=https://github.com/Atrany/workshop-node-js-eval-beginner"
  "Doucet.Benjamin=https://github.com/Doucetb/workshop-node-js-eval-beginner"
  "Orfèvres.Théodore=https://github.com/TOrfevres/workshop-node-js-eval-beginner"
  "Durand.Nicolas=https://github.com/nicodudu/workshop-node-js-eval-beginner"
  "GIRARD.Damien=https://github.com/Sangine/workshop-node-js-eval-beginner"
  "Dupont.Corentin=https://github.com/CorentinDupont/workshop-node-js-eval-beginner"
  "Radocea.Andrei=https://github.com/AndreiYnov/workshop-node-js-eval-beginner"
  "Douillard.Antonin=https://github.com/AntoninDouillard/workshop-node-js-eval-beginner"
  "Hervouet.Nathan=https://github.com/natzgul/workshop-node-js-eval-beginner"
  "Bournigal.Maël=https://github.com/maelbournigal/workshop-node-js-eval-beginner"
  "HUET.Charles=https://github.com/charlopitheque/workshop-node-js-eval-beginner"
  "Drapeau.Fabien=https://github.com/ragorne/workshop-node-js-eval-beginner"
  "dadomo.marie=https://github.com/MarieDadomo/workshop-node-js-eval-beginner"
  "wiart.alexandre=https://github.com/WiartAlexandre/workshop-node-js-eval-beginner"
  "Girard.Romain=https://github.com/GiroDapar/workshop-node-js-eval-beginner"
  "Vivier.Alexis=https://github.com/alexisVivier/workshop-node-js-eval-beginner"
  "Guillevic.Erwann=https://github.com/ErwannGui/workshop-node-js-eval-beginner"
  "Moreau.Geoffrey=https://github.com/GeoffreyYnov/workshop-node-js-eval-beginner"
  "Presencia.Lukas=https://github.com/LPresence/workshop-node-js-eval-beginner"
  "Riveault.Killian=https://github.com/KillianRvt/workshop-node-js-eval-beginner"
  "Nunes.Jérémy=https://github.com/JeremyYnov/workshop-node-js-eval-beginner"
  "noukeu.samory=https://github.com/samnoukynov/workshop-node-js-eval-beginner"
  "DIjoux.Quentin=https://github.com/Shadowkyu/workshop-node-js-eval-beginner"
  "CORBINEAU.DANY=https://github.com/danyCorbineau/workshop-node-js-eval-beginner"
  "Delanoë.Mickaël=https://github.com/Ghloel/workshop-node-js-eval-beginner"
  "Grand.Maxime=https://github.com/maximegrnd/workshop-node-js-eval-beginner"
  "Delorme.Killian=https://github.com/killian44330/workshop-node-js-eval-beginner"
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
