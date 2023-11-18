extends Node2D

func _process(delta):
	var direction = Input.get_vector("left", "right", "up", "down")
	position += direction * 500 * delta
	
	if(Input.is_action_pressed("primary_action")):
		print("shoot lazer")
		
	if(Input.is_action_pressed("secondary_action")):
		print("shoot grenade")
