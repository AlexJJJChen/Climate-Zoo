CUDA_VISIBLE_DEVICES=0,1,2,3  
swift sft \
--sft_type "full" \
--model_id_or_path "qwen/Qwen-VL-Chat" \
--template_type "qwen" \
--custom_train_dataset_path finetune_dataset/train.json \
--custom_val_dataset_path finetune_dataset/test.json \
--save_steps "20" \
--lora_target_modules c_attn \
--batch_size "8" \
--learning_rate "1e-04" \
--gradient_accumulation_steps "16" \
--eval_batch_size "8" \
--add_output_dir_suffix False \
--output_dir output_qwen \
--logging_dir output_qwen \
--num_train_epochs "2" \
--dataset_test_ratio "0.15" \
