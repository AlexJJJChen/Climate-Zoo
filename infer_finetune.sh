CUDA_VISIBLE_DEVICES=0,1,2,3 
swift export \
   --ckpt_dir finetune_output/checkpoint-460 --load_dataset_config true \
   --quant_method awq --quant_bits 4 \
   --merge_lora true \
    
#CUDA_VISIBLE_DEVICES=0,1,2,3 
#swift deploy \
#    --ckpt_dir finetune_output/checkpoint-478 --merge_lora true \
#    --infer_backend vllm --max_model_len 8192


#nproc_per_node=4
CUDA_VISIBLE_DEVICES=0,1,2,3 \
NPROC_PER_NODE=4\
swift infer \
    --ckpt_dir "AI-ModelScope/llava-v1.6-mistral-7b" \
    --load_dataset_config true \
    --custom_val_dataset_path finetune_dataset/test.json \
    --val_dataset_sample -1\
