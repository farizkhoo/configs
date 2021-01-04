# Defined in - @ line 0
function codesp --description 'alias codesp=code ~/Development/spark-project'
	if test "$argv" = ""
		code ~/Development/spark-project;
	else
		code ~/Development/spark-project/$argv;
	end
end
