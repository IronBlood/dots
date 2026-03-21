function fish_prompt
	set -g fish_prompt_pwd_dir_length 0

	set -g __fish_git_prompt_showdirtystate 1
	set -g __fish_git_prompt_showupstream none
	set -g __fish_git_prompt_showstashstate 0
	set -g __fish_git_prompt_showuntrackedfiles 0
	set -g __fish_git_prompt_show_informative_status 0

	set -g __fish_git_prompt_color_branch cyan
	set -g __fish_git_prompt_color_dirtystate red
	set -g __fish_git_prompt_color_cleanstate green
	set -g __fish_git_prompt_char_dirtystate '✖︎'
	set -g __fish_git_prompt_char_cleanstate ' ●'

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

	printf '%s' (fish_git_prompt ' on git:%s')

	set_color $plain_color
	printf ' [%s]' (date '+%H:%M:%S')
	set_color normal

	# Second line
	printf '\n'
	set_color --bold $symbol_color
	printf '$ '
	set_color normal
end
