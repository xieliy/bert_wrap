export BERT_BASE_DIR="."
export WEIBO_DIR="./"

python run_classifier.py \
  --task_name=WeiBo \
  --do_train=True \
  --do_eval=True \
  --data_dir=$WEIBO_DIR \
  --vocab_file=$BERT_BASE_DIR/vocab.txt \
  --bert_config_file=$BERT_BASE_DIR/bert_config.json \
  --init_checkpoint=$BERT_BASE_DIR/bert_model.ckpt \
  --train_batch_size=32 \
  --learning_rate=5e-5 \
  --num_train_epochs=2.0 \
  --max_seq_length=128 \
  --output_dir="./weibo_output/"
