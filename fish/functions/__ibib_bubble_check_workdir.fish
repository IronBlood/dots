# Rejects execution directly in the user's HOME
function __ibib_bubble_check_workdir
	if test (pwd -P) = (realpath "$HOME")
		echo "Refusing to run in HOME" >&2
		return 1
	end
end
