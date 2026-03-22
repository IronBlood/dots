# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/docker
if status is-interactive
	alias dcls="docker container ls"
	alias dclsa="docker container ls -a"
	alias dcprune="docker container prune"
	alias dils="docker image ls"
	alias dirm="docker image rm"
	alias dps="docker ps"
	alias dpsa="docker ps -a"
	alias drit="docker container run -it"
	alias dst="docker container start"
	alias dsta="docker stop (docker ps -q)"
	alias dstp="docker container stop"
	alias dtop="docker top"
	alias dvls="docker volume ls"
end
