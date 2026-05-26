function claude-docker-local
    set -l working_dir (pwd)
    set -l username (id -un)

    docker run --rm -it \
        --add-host=host.docker.internal:host-gateway \
        -e TERM \
        -e COLORTERM \
        -e TERM_PROGRAM \
        -w "$working_dir" \
        -v "$working_dir:$working_dir" \
        -v "$HOME/.claude:/home/$username/.claude" \
        -v "$HOME/.claude.json:/home/$username/.claude.json" \
        -e ANTHROPIC_BASE_URL=http://host.docker.internal:8080 \
        -e ANTHROPIC_AUTH_TOKEN=dummy \
        coding-agent-image:local \
        claude $argv
end
