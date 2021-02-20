# zm_ai_dogs
 T7. Includes death event callbacks (exactly the same as zm_spawner but for dogs)

 Fork of Treyarchs dog ai (hellhound) code to add callbacks upon death. This is used the exact same way zombie death callbacks are done in zm_spawner because the code is heavily based off this. This needs to be added to your _zm_ai_dogs.gsc file. Treyarch's original code is not included in order to respect their copyright.

 Example usage:
 ```php
 //Check the kill weapon on an enemy death
 zm_spawner::register_zombie_death_event_callback(&trackProgWpnKills);
 if(isdefined(level.dog_rounds_enabled) && level.dog_rounds_enabled || isdefined(level.dogs_enabled) && level.dogs_enabled){
 	zm_ai_dogs::register_dog_death_event_callback(&trackProgWpnKills);
 }
 ```
