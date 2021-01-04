# Defined in - @ line 0
function cdcs --description 'alias cdcs=cd ~/Development/courtsite/<folder>'
	if test "$argv" = ""
		cd ~/Development/courtsite;
	else
		cd ~/Development/courtsite/$argv;
	end
end
