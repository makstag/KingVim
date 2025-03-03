# Install neovim  
version should be >= 0.10.0  
```sh
sudo dnf install -y neovim
```  
alternative install neovim  
https://github.com/neovim/neovim/blob/master/BUILD.md#quick-start  

# Install dependencies  
## Install dependencies for neovim  
```sh
sudo dnf install -y nodejs python3.12 git-lfs curl gcc
sudo dnf copr enable atim/lazygit -y
sudo dnf install -y cmake python3-pip lazygit cargo clang pkg-config openssl-devel luarocks ripgrep fd-find xsel clang-tidy-sarif
```  
alternative install chafa  
if you need an animated screensaver on the preview  
```sh
sudo dnf install -y autoconf automake libtool glib2-devel freetype-devel
git clone https://github.com/hpjansson/chafa.git --branch=1.12.0 && cd chafa
./autogen.sh
make
sudo make install
```

## Create links  
```sh
cd /usr/bin && sudo ln -s clang-tidy-sarif clang-tidy && cd
mkdir -p ~/.local/share/nvim/lazy-rocks/hererocks/bin
cd ~/.local/share/nvim/lazy-rocks/hererocks/bin && \
	sudo ln -s /usr/bin/lua lua && \
	sudo ln -s /usr/bin/luarocks luarocks 
```  

## Install npm plugins and add path  
```sh
cd
npm install tree-sitter-cli
sudo npm install -g neovim
```  
change path to .bashrc or .zshrc  
export PATH=$HOME/node_modules/.bin:$HOME/.local/bin:$PATH  

## Install clangd config  
```sh
mkdir -p ~/.config/clangd && /
	cd ~/.config/clangd
nano config.yaml
```
add in config.yaml following config:  

```yaml
CompileFlags:  
	Add: [-std=c++23]  
```
Note: swears at the c code  


## Install nerd-font for neovim  
https://www.nerdfonts.com/font-downloads  
download any font and unpack it into .fonts  
```sh
mkdir ~/.fonts
```  
