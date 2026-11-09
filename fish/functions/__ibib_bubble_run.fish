function __ibib_bubble_run
	if not set -q argv[1]
		echo "Usage: __ibib_bubble_run COMMAND [ARGS...]" >&2
		return 1
	end

	__ibib_bubble_check_workdir; or return 1 # do not use at $HOME
	__ibib_bubble_ensure_home;   or return 1 # create home if not exist

	set -l working_dir (pwd -P)
	set -l sandbox_home "$HOME/.sandbox/home"
	set -l hf_hub "$HOME/.cache/huggingface/hub"
	set -l git_dir "$working_dir/.git"
	set -l extra_mounts
	set -l node_executable (nvm which current)
	set -l node_prefix (dirname (dirname "$node_executable"))

	if test -d "$hf_hub"
		set -a extra_mounts \
			--ro-bind (realpath "$hf_hub") "$sandbox_home/.cache/huggingface/hub"
	end

	if test -e "$git_dir"
		set -a extra_mounts \
			--ro-bind "$git_dir" "$git_dir"
	end

	set -l extra_env   (__ibib_bubble_extra_env   | string split0)
	set -l root_mounts (__ibib_bubble_root_mounts | string split0)

	bwrap \
		--unshare-all \
		--share-net \
		--new-session \
		--die-with-parent \
		--clearenv \
		$extra_env \
		--ro-bind /usr /usr \
		$root_mounts \
		--ro-bind /etc/ssl /etc/ssl \
		--ro-bind-try /etc/hosts /etc/hosts \
		--ro-bind-try /etc/nsswitch.conf /etc/nsswitch.conf \
		--ro-bind (realpath /etc/resolv.conf) /etc/resolv.conf \
		--proc /proc \
		--dev /dev \
		--tmpfs /tmp \
		--dir /run \
		--ro-bind "$node_prefix" "$node_prefix" \
		--bind "$sandbox_home" "$sandbox_home" \
		--ro-bind "$HOME/.oh-my-zsh" "$sandbox_home/.oh-my-zsh" \
		--ro-bind "$HOME/.zshrc" "$sandbox_home/.zshrc" \
		--bind "$working_dir" "$working_dir" \
		$extra_mounts \
		--setenv HOME "$sandbox_home" \
		--setenv PATH "$node_prefix/bin:/usr/bin:/bin" \
		--setenv TERM "$TERM" \
		--setenv COLORTERM "$COLORTERM" \
		--setenv TERM_PROGRAM "$TERM_PROGRAM" \
		--setenv LANG C.UTF-8 \
		--chdir "$working_dir" \
		$argv
end
