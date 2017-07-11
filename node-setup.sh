#!/bin/bash

mkdir -p ~/.nman/bin
curl -O https://raw.githubusercontent.com/jonboydell/nman/master/node-manager.sh; source node-manager.sh;
mv node-manager.sh ~/.nman/bin
curl -o- -L https://yarnpkg.com/install.sh | bash

export PATH=~/.nman/bin:${PATH}
export PATH=~/.yarn/bin:${PATH}

nman-switch v7.10.0
npm -g install nodemon

echo export PATH=~/.nman/bin:\${PATH} >> ~/.profile
echo export PATH=~/.yarn/bin:\${PATH} >> ~/.profile
echo source ~/.nman/bin/node-manager.sh >> ~/.profile
echo nman-switch-active >> ~/.profile
