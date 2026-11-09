# handle /bin /sbin /lib and /lib64
function __ibib_bubble_root_mounts
	for path in /bin /sbin /lib /lib64
		if test -L "$path"
			string join0 -- --symlink (readlink "$path") "$path"
		else if test -d "$path"
			string join0 -- --ro-bind "$path" "$path"
		end
	end
end
