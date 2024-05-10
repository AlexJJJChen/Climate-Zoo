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
# please customize the --batch_size, --eval_batch_size, CUDA_VISIBLE_DEVICES, --num_train_epochs
./fintune_llava_7b.sh
./fintune_llava_34b.sh
./finetune_internvl_chat.sh
./finetune_minicpm.sh
./finetune_qwen_vl.sh
```
## generation
```bash
# 先不要运行，等我更新
./export.sh
```
