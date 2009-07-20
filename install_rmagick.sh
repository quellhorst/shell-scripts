#!/bin/sh
 
echo "Updating macports..."
sudo port -v selfupdate
 
echo "Installing dependency imagemagick..."
sudo port install tiff -macosx imagemagick +q8 +gs +wmf
 
echo "Installing gem rmagick..."
sudo gem install rmagick
 
echo "Installation complete."
 
echo "Test:"
echo "$ irb -rubygems -r RMagick"
echo "irb(main):001:0> puts Magick::Long_version"
