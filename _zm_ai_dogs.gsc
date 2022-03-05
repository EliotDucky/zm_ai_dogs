//Call On: dead dog
function check_dog_death_event_callbacks( attacker ){
	if((!isdefined(level.check_dog_death_event_callbacks))){
		return;
	}

	for(i=0; i<level.dog_death_event_callbacks.size; i++){
		self[[ level.dog_death_event_callbacks[i] ]](attacker);
	}
}

//Call On: level
function register_dog_death_event_callback(func){
	if(!isdefined(level.dog_death_event_callbacks)){
		level.dog_death_event_callbacks = [];
	}
	level.dog_death_event_callbacks[level.dog_death_event_callbacks.size] = func;
}

function deregister_dog_death_event_callback(func){
	if(isdefined(level.dog_death_event_callbacks)){
		if(isdefined(level.dog_death_event_callbacks)){
			ArrayRemoveValue(level.dog_death_event_callbacks, func);
		}
	}
}
