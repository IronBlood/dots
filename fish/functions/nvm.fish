function nvm
	if type -q bass; and test -f ~/.nvm/nvm.sh
		bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
	end
end
