cp .vimrc ~/.vimrc

mkdir -p ~/.vim/pack/plugins/start/
cd ~/.vim/pack/plugins/start/

# rust
git clone https://github.com/rust-lang/rust.vim
# navigaiton
git clone https://github.com/preservim/nerdtree


# syntax
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle && \
git clone --depth=1 https://github.com/vim-syntastic/syntastic.git

