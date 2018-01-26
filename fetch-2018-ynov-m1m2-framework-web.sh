#!/bin/sh

# Init repositories to fetch
REPOSITORIES=(
  "alvin=https://github.com/alvinberthelot/workshop-express-eval"
  "Soudant.Alex=https://github.com/AlexSoudant/workshop-express-eval"
  "Desvallées.Alexandre=https://github.com/AlexDesvallees/workshop-express-eval"
  "Fongue.Steven=https://github.com/sfongue/workshop-express-eval"
  "GALBY.William=https://github.com/willynov/workshop-express-eval"
  "Fourny.Guillaume=https://github.com/gfourny/workshop-express-eval"
  "Badier.Tanguy=https://github.com/Rock3f/workshop-express-eval"
  "GOureau.Nicolas=https://github.com/Killy85/workshop-express-eval"
  "Champleboux.Arnaud=https://github.com/bloodess/workshop-express-eval"
  "Quintin.Florian=https://github.com/Florian-Q/workshop-express-eval"
  "LOIRET.Mathias=https://github.com/mathiasLoiret/workshop-express-eval"
  "LePoupon.Alexandre=https://github.com/Alexandre-LePoupon/workshop-express-eval"
  "Trichard.guillaume=https://github.com/GuillaumeTrichardYnov/workshop-express-eval"
  "Pautonnier.Kévin=https://github.com/KevinPautonnier/workshop-express-eval"
  "CHARPENTIER.Nicolas=https://github.com/CharpentierNicolas/workshop-express-eval"
  "Fournier.Matthieu=https://github.com/LordInateur/workshop-express-eval"
  "Hess.Antoine=https://github.com/L4brax/workshop-express-eval"
  "Gosset.Antoine=https://github.com/AntoineGOSSET/workshop-express-eval"
  "Hipeau.Kévin=https://github.com/kevinhipeau/workshop-express-eval"
  "Hounguevou.Etienne=https://github.com/etienneYnov/workshop-express-eval"
  "ElItti.Imad=https://github.com/imadhy/workshop-express-eval"
  "Raulo.Erwan=https://github.com/orlando1108/workshop-express-eval"
  "Amstutz.Louis=https://github.com/lamstutz/workshop-express-eval"
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
