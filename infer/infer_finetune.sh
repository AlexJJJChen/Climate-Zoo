CUDA_VISIBLE_DEVICES=0,1,2,3
NPROC_PER_NODE=4 \
swift infer \
    --ckpt_dir finetune_output/checkpoint-460-merged \
    --custom_val_dataset_path test.json \
    --val_dataset_sample 10\
    --save_result_path "output_llava"

# llava1d6-yi-34b-instruct
# qwen-vl-chat
# internvl-chat-v1_5
# yi-vl-6b-chat
# cogvlm-17b-instruct
