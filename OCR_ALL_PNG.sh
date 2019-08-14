#!/bin/bash
#########################################################
#Alexandre Novaes Iosimura Aug-13-2019
#Automating PDF to PNG and OCR (Tesseract) over all files
##########################################################
#Dependencies:
###########################################################
# Converting PDF to images (PNG, JPEG, more) using pdftoppm
# Tesseract: (Portuguese support was added to this example) 
###########################################################
#
# INSTALL PACKAGES
# On Ubuntu Linux server using APT
# sudo apt install poppler-utils
# On Fedora Linux:
# sudo dnf install poppler-utils
# On openSUSE Linux:
# sudo zypper install poppler-tools
# On Arch Linux:
# sudo pacman -S poppler
# Command example: pdftoppm -png mydocument.pdf folder/document
#
# Install TESSERACT
# sudo apt-get install  tesseract-ocr
# Install PORTUGUESE Support 
# sudo apt-get install  tesseract-ocr-por

#Executing this script ./scriptname.sh NAME_OF_PDF_FILE.pdf

#creating / cleaning PNG folder
mkdir png_files/
rm -rf png_files/*.png
#Extracting PDF to PNG Files
pdftoppm -png $1 png_files/
#Executing Tesseract (Portuguese support) for ALL PNG files
for i in png_files/*.png;
# -l will use portugese package, for more languages pack search for TESSERACT Support Languages or apt-cache search tesseract-ocr
do tesseract "$i" output -l por;
cat output.txt >> my_ocr.txt;
done
#Cleaning the garbage
rm output.txt
