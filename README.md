# WeatherVision
## Introduction
![image](https://github.com/AlexJJJChen/Climate-Zoo/blob/main/intro_img/nips-case-study_page-0001.jpg)
ClimateIQA was created to address the crucial need for effective Extreme Weather Events Detection (EWED), an increasingly urgent task due to the rising frequency of such events driven by global warming. Traditional methods for EWED rely on numerical threshold setting and the analysis of weather anomaly heatmaps, visualizing data such as temperature, wind speed, and precipitation. However, these methods often involve manual work and can be time-consuming and error-prone. While advances in AI have led to the development of machine learning models like Convolutional Neural Networks (CNNs) for weather prediction and EWED, these models predominantly use numeric data and often yield low accuracy. Moreover, despite the proficiency of Large Language Models (LLMs) in generating textual weather reports, they struggle with interpreting visual data—crucial for EWED. General Vision-Language Models (VLMs) also face challenges in accurately interpreting meteorological heatmaps, commonly misidentifying colors, providing irrelevant responses, and giving incomplete answers. This dataset aims to fill these gaps by providing specialized meteorological data to fine-tune VLMs for more accurate and efficient EWED. 

## Dataset Statistics
![image](https://github.com/AlexJJJChen/Climate-Zoo/blob/main/intro_img/nips-chart_page-0001.jpg)
ClimateIQA comprises 8,760 high-resolution wind gust heatmap images and 254,040 question-answer pair samples, categorized into four types of questions: enumeration, verification, geo-indexing, and description. 

## Benchmarks

![image](https://github.com/AlexJJJChen/Climate-Zoo/blob/main/intro_img/benchmarks.png)

## Deployments
### Download image dataset:
#### QA Pairs 
https://drive.google.com/drive/folders/1VVcTpdM_XTLRFAWk3z5sU2W67Wr5tu-Z?usp=share_link  
#### Image 
https://drive.google.com/file/d/18nRGlpZpYuUNVWsQ8v26Hvnqs-MHMcB8/view?usp=share_link

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
