#!/bin/bash

echo ""
echo ""
echo "****************** Installing torch with cuda ******************"

pip install torch==1.10.0+cu102 torchvision==0.11.0+cu102 torchaudio==0.10.0 --extra-index-url https://download.pytorch.org/whl/cu102
echo ""
echo ""
echo "****************** Installing pandas ******************"
pip install pandas

echo ""
echo ""
echo "****************** Installing tqdm ******************"
pip install tqdm

echo ""
echo ""
echo "****************** Installing opencv ******************"
pip install opencv-python

echo ""
echo ""
echo "****************** Installing tensorboard ******************"
pip install tb-nightly

echo ""
echo ""
echo "****************** Installing visdom ******************"
pip install visdom

echo ""
echo ""
echo "****************** Installing scikit-image ******************"
pip install scikit-image

echo ""
echo ""
echo "****************** Installing tikzplotlib ******************"
pip install tikzplotlib

echo ""
echo ""
echo "****************** Installing gdown ******************"
pip install gdown

echo ""
echo ""
echo "****************** Installing cython ******************"
pip install cython

echo ""
echo ""
echo "****************** Installing coco toolkit ******************"
pip install pycocotools

echo ""
echo ""
echo "****************** Installing LVIS toolkit ******************"
pip install lvis


echo ""
echo ""
echo "****************** Installing jpeg4py python wrapper ******************"
pip install jpeg4py 

echo ""
echo ""
echo "****************** Installing ninja-build to compile PreROIPooling ******************"
echo "************************* Need sudo privilege ******************"
sudo apt-get install ninja-build


echo ""
echo ""
echo "****************** Downloading networks ******************"
mkdir pytracking/networks

echo ""
echo ""
echo "****************** Keep Track Network ******************"

gdown https://drive.google.com/uc\?id\=1JIhzF1yd1EFbVCKJMakqEjWngthySIS5 -O pytracking/networks/keep_track.pth.tar

echo ""
echo ""
echo "****************** SuperDiMP Network ******************"
gdown https://drive.google.com/uc\?id\=1lzwdeX9HBefQwznMaX5AKAGda7tqeQtg -O pytracking/networks/super_dimp_simple.pth.tar

echo ""
echo ""
echo "****************** GOT10k Dataset ******************"

gdown https://drive.google.com/uc\?id\=1ZJJZfftL_EEU61TwyHPhLmtZP7nq5QR7 -O pytracking/GOT10k
!unzip pytracking/GOT10k/got10k.zip -d pytracking/GOT10k

echo ""
echo ""
echo "****************** Setting up environment ******************"
# python -c "from pytracking.evaluation.environment import create_default_local_file; create_default_local_file()"
# python -c "from ltr.admin.environment import create_default_local_file; create_default_local_file()"


echo ""
echo ""
echo "****************** Installing jpeg4py ******************"
while true; do
    read -p "Install jpeg4py for reading images? This step required sudo privilege. Installing jpeg4py is optional, however recommended. [y,n]  " install_flag
    case $install_flag in
        [Yy]* ) sudo apt-get install libturbojpeg; break;;
        [Nn]* ) echo "Skipping jpeg4py installation!"; break;;
        * ) echo "Please answer y or n  ";;
    esac
done

echo ""
echo ""
echo "****************** Installation complete! ******************"

echo ""
echo ""
echo "****************** More networks can be downloaded from the google drive folder https://drive.google.com/drive/folders/1WVhJqvdu-_JG1U-V0IqfxTUa1SBPnL0O ******************"
echo "****************** Or, visit the model zoo at https://github.com/visionml/pytracking/blob/master/MODEL_ZOO.md ******************"
