# ref: https://github.com/sthanhng/yoloface/blob/master/model-weights/get_models.sh
#!/usr/bin/env bash

W_FILENAME=yolov3-wider_16000.weights.zip

# Download yoloface models
echo "*** Downloading the trained models..."

wget --load-cookies /tmp/cookies.txt -r "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=13gFDLFhhBqwMw6gf8jVUvNDH2UrgCCrX' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=13gFDLFhhBqwMw6gf8jVUvNDH2UrgCCrX" -O $W_FILENAME && rm -rf /tmp/cookies.txt

# Unzip
unzip -q $W_FILENAME

# Delete .zip files
rm -rf $W_FILENAME

echo "*** All done!!!"