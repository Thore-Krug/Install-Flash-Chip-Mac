#!/bin/bash

sudo /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" -y

brew install bash wget curl screen u-boot-tools libusb zlib pkg-config
wget https://raw.githubusercontent.com/Homebrew/homebrew-cask/cf82f0a10d08afd146e176c275a03964ae9e5866/Casks/android-platform-tools.rb

brew cask install android-platform-tools.rb 

cd

git clone https://github.com/Thore-Krug/Chip-tools-Mac.git

cd Chip-tools-Mac

find ./ -name "*.sh" -exec chmod +x {} \;

git clone https://github.com/linux-sunxi/sunxi-tools.git

cd sunxi-tools 

pkg-config --libs libusb-1.0

pkg-config --libs zlib

sudo make install-misc

cd

echo " U can now Close this Window "
