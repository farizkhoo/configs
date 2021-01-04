# Defined in - @ line 0
function codegc --description 'alias codegc=code ~/Development/getcar/<folder>'
	if test "$argv" = ""
		code ~/Development/getcar;
	else
		code ~/Development/getcar/$argv;
	end
end
