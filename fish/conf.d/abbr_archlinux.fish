# selected from https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/archlinux/README.md

if status is-interactive
	alias pacin="sudo pacman -S"
	alias paclean="sudo pacman -Sc"
	alias pacloc="pacman -Qi"
	alias paclocs="pacman -Qs"
	alias pacmir="sudo pacman -Syy"
	alias pacre="sudo pacman -R"
	alias pacrem="sudo pacman -Rns"
	alias pacrep="pacman -Si"
	alias pacreps="pacman -Ss"
	alias pacupd="sudo pacman -Sy"
	alias pacupg="sudo pacman -Syu"
	alias pacfiles="pacman -F"
	alias pacls="pacman -Ql"
	alias pacown="pacman -Qo"
end
