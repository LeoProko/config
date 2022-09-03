cp .vimrc ~/.vimrc

mkdir -p ~/.vim/pack/plugins/start/


# Rust
cd ~/.vim/pack/plugins/start/ && git clone https://github.com/rust-lang/rust.vim

# NERDTree
cd ~/.vim/pack/plugins/start/ && git clone https://github.com/preservim/nerdtree

# NERDComment
cd ~/.vim/pack/plugins/start/ && git clone https://github.com/preservim/nerdcommenter.git

# Window Chooser
cd ~/.vim/pack/plugins/start/ && git clone https://github.com/t9md/vim-choosewin.git

# Pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Syntax
cd ~/.vim/bundle && git clone --depth=1 https://github.com/vim-syntastic/syntastic.git

# YouCompleteMe
cd ~/.vim/bundle && git clone --depth=1 https://github.com/ycm-core/YouCompleteMe.git
cd ~/.vim/bundle/YouCompleteMe && git submodule update --init --recursive && python3 install.py --all

