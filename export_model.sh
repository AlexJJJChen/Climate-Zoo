#nproc_per_node=4
CUDA_VISIBLE_DEVICES=0,1,2,3 \
#NPROC_PER_NODE=$nproc_per_node \
swift infer \
    --ckpt_dir output_internvl/checkpoint-460xxx \
    --load_dataset_config true \
    --custom_val_dataset_path finetune_dataset/test.json \
    --val_dataset_sample -1\
