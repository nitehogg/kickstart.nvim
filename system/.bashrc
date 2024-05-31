function load_ide() {
  tmux new -s nitehogg -n $(pwd) -y- -d nvim 
  tmux source-file ~/.tmux-ide.conf 
  tmux attach
}

alias nv="load_ide"
