#!/bin/bash

# install dist requirements
sudo apt install python-software-properties
sudo add-apt-repository -yn ppa:ubuntuhandbook1/apps # for mupdf, mupdf-tools
sudo add-apt-repository -y ppa:malteworld/ppa        # for pdftk
sudo apt install djvulibre-bin libdjvulibre21 libtiff-tools mupdf mupdf-tools pdftk poppler-utils git djview virtualenv

# install python requirements
virtualenv --python=python2 venv
source venv/bin/activate
pip install -r requirements.txt
