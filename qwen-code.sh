export LLAMA_MODELS_PATH="/run/media/mrkrynmdsco/Data/ai/models/gguf"

llama-server \
    --model "$LLAMA_MODELS_PATH/Qwen3.6-35B-A3B-UD-Q4_K_M.gguf" \
    --mmproj "$LLAMA_MODELS_PATH/mmproj-Qwen3.6-35B-A3B-F16.gguf" \
    --alias "qwen-3.6-35B-A3B-coding" \
    --host 0.0.0.0 \
    --port 9696 \
    \
    --ctx-size 262144 \
    --batch-size 4096 \
    --ubatch-size 512 \
    --parallel 2 \
    --threads 8 \
    \
    --gpu-layers all \
    --cpu-moe \
    --cpu-moe-draft \
    --fit off \
    \
    --flash-attn on \
    --cache-type-k q4_0 \
    --cache-type-v q4_0 \
    \
    --spec-type draft-mtp \
    --spec-draft-n-max 1 \
    --spec-draft-n-min 1 \
    --spec-draft-type-k q4_0 \
    --spec-draft-type-v q4_0 \
    \
    --image-min-tokens 1024 \
    --cache-ram 1024 \
    --load-mode none \
    \
    --temperature 0.69 \
    --top-p 0.96 \
    --top-k 40 \
    --min-p 0.01 \
    --repeat-penalty 1.0 \
    --presence-penalty 0.0 \
    --frequency-penalty 0.0 \
    \
    --reasoning on \
    --reasoning-budget 1024 \
    --reasoning-preserve \
    --jinja
