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
sudo apt install poppler-utils
# On Fedora Linux:
# sudo dnf install poppler-utils
# On openSUSE Linux:
# sudo zypper install poppler-tools
# On Arch Linux:
# sudo pacman -S poppler
# Command example: pdftoppm -png mydocument.pdf folder/document
#
# Install TESSERACT
sudo apt-get install  tesseract-ocr
# Install PORTUGUESE Support 
sudo apt-get install  tesseract-ocr-por
