# Defined in - @ line 0
function dcr --description 'alias dcr=docker-compose run --rm --service-ports'
	docker-compose run --rm --service-ports $argv;
end
