CUDA_VISIBLE_DEVICES=0,1,2,3
NPROC_PER_NODE=4 \
swift infer \
    --load_args_from_ckpt_dir true \
    --model_type llava1d6-mistral-7b-instruct \
    --custom_val_dataset_path finetune_dataset/test.json \
    --val_dataset_sample -1\

# llava1d6-yi-34b-instruct
# qwen-vl-chat
# internvl-chat-v1_5
# yi-vl-6b-chat
# cogvlm-17b-instruct