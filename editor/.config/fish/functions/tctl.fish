# Defined in - @ line 0
function tctl --description 'alias tctl=docker run --network=host --rm temporalio/tctl:0.28.0'
	docker run --network=host --rm temporalio/tctl:0.28.0 $argv;
end
