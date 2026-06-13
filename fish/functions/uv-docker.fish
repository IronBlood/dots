function uv-docker
    set -l working_dir (pwd)
    set -l username (id -un)

    docker run --rm -it \
        -e TERM \
        -e COLORTERM \
        -e TERM_PROGRAM \
        -w "$working_dir" \
        -v "$working_dir:$working_dir" \
        -v "$HOME/.config/uv:/home/$username/.config/uv" \
        coding-agent-image:local \
        uv $argv
end

