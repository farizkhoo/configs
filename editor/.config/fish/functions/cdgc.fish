# Defined in - @ line 0
function cdgc --description 'alias cdgc=cd ~/Development/getcar/<folder>'
	if test "$argv" = ""
		cd ~/Development/getcar;
	else
		cd ~/Development/getcar/$argv;
	end
end
