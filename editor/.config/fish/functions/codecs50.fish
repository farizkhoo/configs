# Defined in - @ line 0
function codecs50 --description 'alias codecs=code ~/Development/cs50/<folder>'
	if test "$argv" = ""
		code ~/Development/cs50;
	else
		code ~/Development/cs50/$argv;
	end
end
