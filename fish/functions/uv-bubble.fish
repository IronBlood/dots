function uv-bubble
	__ibib_bubble_run /usr/bin/env \
		UV_LINK_MODE=copy \
		UV_CONCURRENT_DOWNLOADS=4 \
		/usr/bin/uv $argv
end
