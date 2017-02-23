#!/bin/sh

# Init repositories to fetch
REPOSITORIES=(
  "alvin=https://github.com/alvinberthelot/workshop-functional-js"
  "kevin=https://github.com/kevinhipeau/workshop-functional-js"
  "loic=https://github.com/CaptainFloax/workshop-functional-js"
  "florian=https://github.com/FloFloo17/workshop-functional-js"
  "mathilde=https://github.com/MathildeKerhom/workshop-functional-js"
  "antoine=https://github.com/L4brax/workshop-functional-js"
  "lucas=https://github.com/LcsBillet/workshop-functional-js"
  "william=https://github.com/willynov/workshop-functional-js"
  "alexandre=https://github.com/Alexandre-LePoupon/workshop-functional-js"
  "zaccharie=https://github.com/zackdu35/workshop-functional-js"
  "guillaume=https://github.com/GuillaumeTrichardYnov/workshop-functional-js"
  "victor=https://github.com/VictorVLP/workshop-functional-js"
  "stephanie=https://github.com/StephBlondeau/workshop-functional-js"
  "arnaud=https://github.com/bloodess/workshop-functional-js"
  "nicolas=https://github.com/CharpentierNicolas/workshop-functional-js"
  "valentin=https://github.com/vgoulet/workshop-functional-js"
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
