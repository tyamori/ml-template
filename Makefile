# ソースコードのディレクトリ
RC_DIR := src

# データのダウンロード
download-data:
    python $(SRC_DIR)/download_data.py

# データの前処理
preprocess:
    python $(SRC_DIR)/preprocess_data.py

# モデルの訓練
train:
    python $(SRC_DIR)/train_model.py

# モデルの評価
evaluate:
    python $(SRC_DIR)/evaluate_model.py

# モデルの予測
predict:
    python $(SRC_DIR)/predict.py

# すべての処理の実行 (データのダウンロードから予測まで)
all: download-data preprocess train evaluate predict

# Jupyter Notebookの起動
notebook:
    jupyter notebook

# 依存関係のインストール
install-dependencies:
    pip install -r requirements.txt
