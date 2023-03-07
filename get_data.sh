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
