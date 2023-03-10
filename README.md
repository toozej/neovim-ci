# neovim-ci
Docker image running neovim for CI/CD purposes

## Usage
```
docker run --rm -v ${PWD}:/workspace/ ghcr.io/toozej/neovim-ci /bin/sh -c
          "ls -lah /workspace/; 
          cp -r /workspace/ /root/.config/nvim/; 
          curl -fLo $HOME/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
          nvim +'PlugInstall --sync' +qa;"
```
