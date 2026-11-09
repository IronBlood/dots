function uv-docker
    set -l working_dir (pwd)
    set -l username (id -un)
    set -l sandbox_home "$HOME/.sandbox/home"
    set -l container_home "/home/$username"
    set -l hf_hub "$HOME/.cache/huggingface/hub"

    docker run --rm -it \
        -e TERM \
        -e COLORTERM \
        -e TERM_PROGRAM \
        -e UV_LINK_MODE=copy \
        -e UV_CONCURRENT_DOWNLOADS=4 \
        -w "$working_dir" \
        -v "$working_dir:$working_dir" \
        -v "$sandbox_home/.config:$container_home/.config" \
        -v "$sandbox_home/.cache:$container_home/.cache" \
        -v "$sandbox_home/.local/share:$container_home/.local/share" \
        -v "$sandbox_home/.cargo:$container_home/.cargo" \
        -v "$hf_hub:$container_home/.cache/huggingface/hub:ro" \
        coding-agent-image:local \
        uv $argv
end

