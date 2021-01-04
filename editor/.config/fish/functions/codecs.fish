# Defined in - @ line 0
function codecs --description 'alias codecs=code ~/Development/courtsite/<folder>'
	if test "$argv" = ""
		code ~/Development/courtsite;
	else
		code ~/Development/courtsite/$argv;
	end
end
