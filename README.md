# WeatherVision

## download image dataset:
https://drive.google.com/drive/folders/1qMKLOsqc9aPyqrbA5chCkGHJ9T5o-yY7?usp=sharing

## environment setup
```bash
conda create -n weathervision python==3.10
conda activate weathervision
```

## installation
```bash
# Full capabilities
pip install 'ms-swift[all]' -U
pip install -r requirements.txt
```

## finetune
```bash
# Full capabilities
./fintune_llava_7b.sh
./fintune_llava_34b.sh
./finetune_internvl_chat.sh
./
```
