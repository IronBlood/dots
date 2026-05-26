function codex-docker
	set -l working_dir (pwd)
	set -l username (id -un)

	docker run --rm -it \
		-e TERM \
		-e COLORTERM \
		-e TERM_PROGRAM \
		-w "$working_dir" \
		-v "$working_dir:$working_dir" \
		-v "$HOME/.codex:/home/$username/.codex" \
		coding-agent-image:local \
		codex --sandbox danger-full-access $argv
end
