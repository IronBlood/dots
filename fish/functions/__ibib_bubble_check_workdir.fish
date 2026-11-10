# Allows logical HOME subdirectories except hidden top-level directories, including symlinks to external paths.
function __ibib_bubble_check_workdir
	set -l wd (pwd -L)
	set -l home "$HOME"

	set -l prefix "$HOME/"
	set -l wd_prefix (string sub --length (string length -- "$prefix") -- "$wd")

	if test "$wd_prefix" != "$prefix"
		echo "Refusing: $wd is not inside $home" >&2
		return 1
	end

	set -l rel (string replace -- "$home/" "" "$wd")
	if string match -q -- ".*" (string split -m1 -- / $rel)[1]
		echo "Refusing: $wd is inside a hidden directory of $home" >&2
		return 1
	end
end
