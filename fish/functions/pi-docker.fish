function pi-docker
    set -l working_dir (pwd)
    set -l username (id -un)

    docker run --rm -it \
        -e TERM \
        -e COLORTERM \
        -e TERM_PROGRAM \
        -w "$working_dir" \
        -v "$working_dir:$working_dir" \
        -v "$HOME/.pi:/home/$username/.pi" \
        coding-agent-image:local \
        pi $argv
end
