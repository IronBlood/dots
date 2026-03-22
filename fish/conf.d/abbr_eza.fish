# https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/eza/README.md
if status is-interactive
	alias la="eza -la"
	alias ldot="eza -ld .*"
	alias lD="eza -lD"
	alias lDD="eza -laD"
	alias ll="eza -l"
	alias ls="eza"
	alias lsdl="eza -dl"
	alias lS="eza -l -ssize"
	alias lT="eza -l -snewest"
end
