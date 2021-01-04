# Defined in - @ line 0
function cdsp --description 'alias cdsp=cd ~/Development/spark-project'
	if test "$argv" = ""
		cd ~/Development/spark-project;
	else
		cd ~/Development/spark-project/$argv;
	end
end
