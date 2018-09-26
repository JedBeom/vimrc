# This shell script is fit to Manjaro.

echo "Installing python3-dev..."
sudo pacman -S python3-dev

cd ~/.vim/bundle/YouCompleteMe
echo "Starting install.py..."
python3 install.py --go-completer


