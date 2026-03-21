function fish_prompt
	set -l user_color   cyan
	set -l host_color   green
	set -l dir_color    yellow
	set -l symbol_color red
	set -l plain_color  white

	set_color --bold blue
	printf '\n# '
	set_color normal

	if fish_is_root_user
		set_color --background=yellow cyan
	else
		set_color $user_color
	end
	printf '%s' $USER
	set_color normal

	set_color $plain_color
	printf ' at '
	set_color $host_color
	printf '%s' (prompt_hostname)
	set_color $plain_color
	printf ' in '
	set_color --bold $dir_color
	printf '%s' (prompt_pwd)
	set_color normal

	set_color $plain_color
	printf ' [%s]' (date '+%H:%M:%S')
	set_color normal

	# Second line
	printf '\n'
	set_color --bold $symbol_color
	printf '$ '
	set_color normal
end
