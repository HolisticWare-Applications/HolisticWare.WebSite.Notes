# Images and Image Converters and Optimizers

images-and-image-converters.md

## MacOSX


### Usage

Inkscape:

    /Applications/Inkscape.app/Contents/Resources/bin/inkscape \
        --export-png output.png \
        -w 1024 -h 768 \
        input.svg

    inkscape $(pwd)/logo.svg \
        --export-png $(pwd)/logo.png
        
jpegoptim: 

    find . -name "*.jpg" -exec jpegoptim -m80 -o -p --strip-all {} \; 

optipng: 

    find . -name "*.png" -exec optipng -o7 {} \;

pngcrush:

    brew install pngcrush

    alias \
        pngcrush=\
        `/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/pngcrush`

Imagemagick:

    convert picture.svg picture.png

    mogrify -format png *.svg

QLManage:

    qlmanage -t -s 1000 -o . picture.svg

`rsvg-convert`:

    rsvg-convert -h 32 icon.svg > icon-32.png


### Installation

Imagemagick:

    export TOOL=imagemagick
    brew uninstall $TOOL
    brew update 
    brew install $TOOL
    brew upgrade $TOOL

    port install imagemagick +rsvg

`rsvg-convert`:

    export TOOL=librsvg
    brew uninstall $TOOL
    brew update 
    brew install $TOOL
    brew upgrade $TOOL

jpegoptim: 

    export TOOL=jpegoptim
    brew uninstall $TOOL
    brew update 
    brew install $TOOL
    brew upgrade $TOOL

pngcrush:

    export TOOL=pngcrush
    brew uninstall $TOOL
    brew update 
    brew install $TOOL
    brew upgrade $TOOL


    alias \
        pngcrush=\
        `/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/pngcrush`

optipng: 

    export TOOL=optipng
    brew uninstall $TOOL
    brew update 
    brew install $TOOL
    brew upgrade $TOOL

imageopt:

    export TOOL=imageoptim
    brew uninstall $TOOL
    brew update 
    brew cask install $TOOL
    brew upgrade $TOOL

    https://imageoptim.com/mac



## Links / References

*   https://github.com/SharpeRAD/Cake.ImageOptimizer

*   https://github.com/SharpeRAD/Cake.ImageOptimizer/search?utf8=%E2%9C%93&q=Process&type=




1.  boot into single user mode

2.  trim unused blocks

    fsck -fy











