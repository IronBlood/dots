# list of extra allowed environment variables
function __ibib_bubble_extra_env
	if set -q https_proxy
		string join0 -- --setenv https_proxy "$https_proxy"
	end
end
