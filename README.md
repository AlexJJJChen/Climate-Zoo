# WeatherVision

## download image dataset:
https://drive.google.com/drive/folders/1VVcTpdM_XTLRFAWk3z5sU2W67Wr5tu-Z?usp=share_link
https://drive.google.com/file/d/18nRGlpZpYuUNVWsQ8v26Hvnqs-MHMcB8/view?usp=share_link

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
# --ckpt_dir 要基于 output 的 checkpoint 文件名进行修改
./export.sh
```
