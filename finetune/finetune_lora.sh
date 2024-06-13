CUDA_VISIBLE_DEVICES=0,1,2,3 \
NPROC_PER_NODE=4 \
nproc_per_node=4 \
swift sft \
--sft_type "lora" \
--model_type llama3-llava-next-8b \
--custom_train_dataset_path train.json \
--custom_val_dataset_path test.json \
--save_steps "500" \
--eval_steps "500" \
--batch_size "1" \
--learning_rate "1e-04" \
--eval_batch_size "1" \
--lora_rank 8 \
--lora_alpha 32 \
--lora_dropout_p 0.05 \
--output_dir output_minicpm \
--logging_dir output_minicpm \
--num_train_epochs "1" \
--dataset_test_ratio "0.15" \
--max_length "-1" \
--deepspeed default-zero2 \
--save_total_limit "-1" \

# model_type you can use different parameter: llava1d6-mistral-7b-instruct, llava1d6-yi-34b-instruct, qwen-vl-chat, internvl-chat-v1_5, yi-vl-6b-chat, cogvlm-17b-instruct