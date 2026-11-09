# Creates $HOME/.sandbox/<name>, defaulting to home
# Accepts one optional name containing 1-10 ASCII letters or digits.
function __ibib_bubble_ensure_home
	set -l name home

	if set -q argv[1]
		set name "$argv[1]"
	end

	if test (count $argv) -gt 1
		echo "Too many arguments" >&2
		return 1
	end

	if not string match -rq '^[a-zA-Z0-9]{1,10}$' -- "$name"
		echo "Invalid sandbox name: $name" >& 2
		return 1
	end

	mkdir -p -- "$HOME/.sandbox/$name"
end
