#!/bin/bash 
wget -O chestXray.zip https://data.mendeley.com/public-files/datasets/rscbjbr9sj/files/f12eaf6d-6023-432f-acc9-80c9d7393433/file_downloaded
unzip -q chestXray.zip
rm chestXray.zip
arr=($(ls chest_xray/train/NORMAL/*))
mkdir -p chest_xray/validation/NORMAL/
for i in {0..349}
do
    
    mv ${arr[$i]} chest_xray/validation/NORMAL/
done

arr=($(ls chest_xray/train/PNEUMONIA/*))
mkdir -p chest_xray/validation/PNEUMONIA/
for i in {0..883}
do
    mv ${arr[$i]} chest_xray/validation/PNEUMONIA/
done
