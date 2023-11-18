extends CharacterBody2D

func _process(_delta):
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * 500
	move_and_slide()
	
	if(Input.is_action_pressed("primary_action")):
		print("shoot lazer")
		
	if(Input.is_action_pressed("secondary_action")):
		print("shoot grenade")
