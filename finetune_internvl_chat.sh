# Experimental environment: 4 * A100
# device map
# 4 * 72 GPU memory
# nproc_per_node=4 \
# CUDA_VISIBLE_DEVICES=0,1,2,3 \
# NPROC_PER_NODE=$nproc_per_node \

# swift sft \
#     --model_type internvl-chat-v1_5 \
#     --sft_type full \
#     --custom_train_dataset_path wind_gust_dataset/train_swift.json \
#     --custom_val_dataset_path wind_gust_dataset/test_swift.json \
#     --dataset_test_ratio "0.15" \
#     --save_steps "20" \
#     --output_dir output_internvl_chat \
#     --logging_dir output_internvl_chat \
#     --batch_size "1" \
#     --learning_rate "1e-4" \
#     --num_train_epochs "2" \
#     --gradient_accumulation_steps "16" \
#     --eval_batch_size "1" \
#     --max_length -1 \
#     --train_dataset_sample -1 \
#     --ddp_backend nccl \
#     --check_dataset_strategy warning \
#     --gradient_checkpointing "True" \
#     --deepspeed default-zero3 \

CUDA_VISIBLE_DEVICES=0,1,2,3 \
NPROC_PER_NODE=4 \
swift sft \
--sft_type "full" \
--model_id_or_path "AI-ModelScope/InternVL-Chat-V1-5" \
--template_type "internvl" \
--custom_train_dataset_path finetune_dataset/train.json \
--custom_val_dataset_path finetune_dataset/test.json \
--save_steps "20" \
--batch_size "8" \
--learning_rate "1e-04" \
--eval_batch_size "8" \
--output_dir output_internvl \
--logging_dir output_internvl \
--num_train_epochs "2" \
--dataset_test_ratio "0.15" \

