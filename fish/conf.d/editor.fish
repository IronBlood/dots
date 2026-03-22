if command -q nvim
	set -gx EDITOR nvim
	set -gx VISUAL nvim
else if command -q vim
	set -gx EDITOR vim
	set -gx VISUAL vim
else if command -q nano
	set -gx EDITOR nano
	set -gx VISUAL nano
end
