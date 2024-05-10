nproc_per_node=4 \
CUDA_VISIBLE_DEVICES=0,1,2,3 \
NPROC_PER_NODE=$nproc_per_node \
swift sft \
    --model_id_or_path "AI-ModelScope/llava1d6-yi-34b-instruct" \
    --template_type "llava-mistral-instruct" \
    --custom_train_dataset_path wind_gust_dataset/train_swift.json \
    --custom_val_dataset_path wind_gust_dataset/test_swift.json \
    --dataset_test_ratio "0.15" \
    --save_steps "20" \
    --lora_target_modules q_proj k_proj v_proj \
    --batch_size "1" \
    --learning_rate "1e-4" \
    --num_train_epochs "2" \
    --gradient_accumulation_steps "16" \
    --eval_batch_size "1" \
    --use_flash_attn "True" \
    --add_output_dir_suffix False \
    --output_dir test \
    --logging_dir test\
    --max_length -1\
    --train_dataset_sample -1 \
    --sft_type lora \

    --tuner_backend peft \
    --quantization_bit 4 \
    --bnb_4bit_comp_dtype AUTO \
    --ddp_backend nccl \
    --check_dataset_strategy warning \
    --gradient_checkpointing "True" \
    --deepspeed default-zero3 \