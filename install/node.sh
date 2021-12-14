volta install node
volta install npm

npm config set prefix ~/.npm



# Globally install with npm
packages=(
    @angular/cli
    eslint
    http-server
    ts-node-dev
)

npm install -g "${packages[@]}"