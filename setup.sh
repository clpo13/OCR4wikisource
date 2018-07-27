#!/bin/bash

sudo apt-get install python-software-properties
sudo add-apt-repository -yn ppa:ubuntuhandbook1/apps # for mupdf, mupdf-tools
sudo add-apt-repository -y ppa:malteworld/ppa        # for pdftk
sudo apt-get install djvulibre-bin libdjvulibre21 libtiff-tools mupdf mupdf-tools pdftk poppler-utils git djview

sudo pip install --upgrade google-api-python-client
sudo pip install clint requests wikitools poster oauth2client apiclient

sudo pip uninstall -y  apiclient
sudo pip uninstall -y google-api-python-client
sudo pip install google-api-python-client
sudo pip install gdcmdtools
