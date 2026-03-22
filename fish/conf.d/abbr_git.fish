# selected from https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/git/README.md

# --------------------------------------------------------------------------
# These formats are my personal preferences, in the git module of oh-my-zsh,
# there are similar commands for example `glols`, `glods` which you might
# want to check out.
# --------------------------------------------------------------------------
function __glg_format_1
	echo '%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)'
end

function __glg_format_2
	echo '%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)'
end

function __glg_format_3
	echo '%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset) %C(bold cyan)(committed: %cD)%C(reset) %C(bold yellow)%d%C(reset)%n          %C(white)%s%C(reset)%n          %C(dim white)- %an <%ae> %C(reset) %C(dim white)(committer: %cn <%ce>)%C(reset)'
end

function __glg_run
	set -l fmt $argv[1]
	git log --all --graph --abbrev-commit --decorate --format="$fmt" $argv[2..-1]
end

function glg1
    __glg_run (__glg_format_1) $argv
end

function glg2
    __glg_run (__glg_format_2) $argv
end

function glg3
    __glg_run (__glg_format_3) $argv
end

if status is-interactive
	alias g="git"
	alias ga="git add"
	alias gapa="git add --patch"
	alias gco="git checkout"
	alias gcor="git checkout --recurse-submodules"
	alias gcb="git checkout -b"
	alias gcB="git checkout -B"
	alias gcl="git clone --recurse-submodules"
	alias gc="git commit --verbose"
	alias gc!="git commit --verbose --amend"
	alias gcn!="git commit --verbose --no-edit --amend"
	alias gd="git diff"
	alias gdca="git diff --cached"
	alias gdcw="git diff --cached --word-diff"
	alias gdw="git diff --word-diff"
	alias gf="git fetch"
	alias gfa="git fetch --all --tags --prune"
	alias gfo="git fetch origin"
	alias ggp="git push origin (git branch --show-current)"
	alias gra="git remote add"
	alias grmv="git remote rename"
	alias grrm="git remote remove"
	alias grup="git remote update"
	alias grst="git restore --staged"
	alias grm="git remove"
	alias gstu="git stash --include-untracked"
	alias gstl="git stash list"
	alias gstp="git stash pop"
	alias gst="git status"
	alias gss="git status --short"
	alias gsw="git switch"
	alias gswc="git switch -c"
end
