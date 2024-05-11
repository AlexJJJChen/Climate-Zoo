CUDA_VISIBLE_DEVICES=0,1,2,3  
swift sft \
--sft_type "full" \
--model_id_or_path "AI-ModelScope/llava-v1.6-mistral-7b" \
--template_type "llava-mistral-instruct" \
--custom_train_dataset_path finetune_dataset/train.json \
--custom_val_dataset_path finetune_dataset/test.json \
--save_steps "20" \
--batch_size "8" \
--learning_rate "1e-04" \
--eval_batch_size "8" \
--output_dir output_llava_7b \
--logging_dir output_llava_7b \
--num_train_epochs "2" \
--dataset_test_ratio "0.15" \
