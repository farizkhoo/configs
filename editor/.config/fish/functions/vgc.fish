# Defined in - @ line 0
function vgc --description 'alias vgc=vim ~/Development/getcar/<folder>'
	if test "$argv" = ""
		vim ~/Development/getcar;
	else
		vim ~/Development/getcar/$argv;
	end
end
