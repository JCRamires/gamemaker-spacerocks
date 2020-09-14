instance_destroy();

function createTwoAsteroids(asteroidSprite) {
	repeat(2) {
		var newAsteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
		newAsteroid.sprite_index = asteroidSprite;
	}
}

with(other) {
	instance_destroy();
	
	switch(sprite_index) {
		case spr_asteroid_large:
			createTwoAsteroids(spr_asteroid_medium);
			break;
		case spr_asteroid_medium:
			createTwoAsteroids(spr_asteroid_small);
			break;
		default:
			break;
	}
	
	repeat(10) {
		instance_create_layer(x, y, "Instances", obj_debris);
	}
}