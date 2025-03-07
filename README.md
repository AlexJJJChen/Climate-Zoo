# Climate-Zoo & ClimateIQA
## Introduction
![image](https://github.com/AlexJJJChen/Climate-Zoo/blob/main/intro_img/Screen%20Shot%202025-02-25%20at%2018.44.54.png)
Meteorological heatmaps play a vital role in deciphering extreme weather phenomena, yet their inherent complexities—marked by irregular contours, unstructured patterns, and complex color variations—present unique analytical hurdles for state-of-the-art Vision-Language Models (VLMs).
Current state-of-the-art models like GPT-4o, Qwen-VL, and LLaVA 1.6 struggle with tasks such as precise color identification and spatial localization, resulting in inaccurate or incomplete interpretations. To address these challenges, we introduce Sparse Position and Outline Tracking (SPOT), a novel algorithm specifically designed to process irregularly shaped colored regions in visual data. SPOT identifies and localizes these regions by extracting their spatial coordinates, enabling structured representations of irregular shapes. Building on SPOT, we construct ClimateIQA, a novel meteorological visual question answering (VQA) dataset, comprising 26,280 high-resolution heatmaps and 762,120 instruction samples for wind gust, total precipitation, wind chill index and heat index analysis. ClimateIQA enhances VLM training by incorporating spatial cues, geographic metadata, and reanalysis data, improving model accuracy in interpreting and describing extreme weather features. Furthermore, we develop Climate-Zoo, a suite of fine-tuned VLMs based on SPOT-empowered ClimateIQA, which significantly outperforms existing models in meteorological heatmap tasks.

## Dataset Statistics
![image](https://github.com/AlexJJJChen/Climate-Zoo/blob/main/intro_img/Screen%20Shot%202025-02-25%20at%2018.46.08.png)
ClimateIQA comprises 26,280 high-resolution wind gust heatmap images and 762,120 question-answer pair samples, categorized into four types of questions: enumeration, verification, geo-indexing, and description. 

## Benchmarks

![image](https://github.com/AlexJJJChen/Climate-Zoo/blob/main/intro_img/Screen%20Shot%202025-02-25%20at%2018.49.04.png)

## Deployments
### Download image dataset:
#### QA Pairs: 
https://drive.google.com/drive/folders/1VVcTpdM_XTLRFAWk3z5sU2W67Wr5tu-Z?usp=share_link  
#### Image: 
Wind Gust: https://drive.google.com/file/d/18nRGlpZpYuUNVWsQ8v26Hvnqs-MHMcB8/view?usp=share_link
Combined Wind Chill Index and Heat Index: https://drive.google.com/file/d/1CTAtvAMXoTIq_v3Rvu9a3as5b2XITN0u/view?usp=share_link
Total Precipitation: https://drive.google.com/file/d/1Kc0ZkP1cjsKo7GrQvG0zTsFGuM8DcK_7/view?usp=share_link

### Environment setup
```bash
conda create -n climatezoo python==3.10
conda activate climatezoo
```

### Installation
```bash
# Full capabilities
pip install 'ms-swift[all]' -U
pip install -r requirements.txt
```

### Finetune
```bash
# .sh files are saved in 'finetune' document.
# please customize the --batch_size, --eval_batch_size, CUDA_VISIBLE_DEVICES, --num_train_epochs
./fintune_full.sh
./fintune_lora.sh
```
### Infer
```bash
# .sh files are saved in 'infer' document.
# --ckpt_dir should be modified based on the checkpoint filename of the finetune output.
./infer_base.sh
./infer_finetune.sh
```
