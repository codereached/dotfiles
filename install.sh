    #!/usr/bin/env bash

    $HOME/.dotfiles/stowsh "$HOME/.dotfiles/main" -t "$HOME"
    $HOME/.dotfiles/stowsh "$HOME/.dotfiles/local" -t "$HOME"
    