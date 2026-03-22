if status is-interactive
	set -g fish_prompt_pwd_dir_length 0

	set -g __fish_git_prompt_showdirtystate 1
	set -g __fish_git_prompt_showuntrackedfiles 1
	set -g __fish_git_prompt_showupstream none
	set -g __fish_git_prompt_showstashstate 0
	set -g __fish_git_prompt_show_informative_status 0

	set -g __fish_git_prompt_color_branch cyan
	set -g __fish_git_prompt_color_dirtystate red
	set -g __fish_git_prompt_color_cleanstate green
	set -g __fish_git_prompt_char_dirtystate '✖︎'
	set -g __fish_git_prompt_char_cleanstate ' ●'

	fish_config theme choose catppuccin-mocha --color-theme=dark

	set -g fish_greeting

	nvm use default > /dev/null
end
