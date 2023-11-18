extends CharacterBody2D

var can_lazer: bool = true
var can_grenade: bool = true

func _process(_delta):
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * 500
	move_and_slide()
	
	if(Input.is_action_pressed("primary_action") and can_lazer):
		print("shoot lazer")
		can_lazer = false
		$Timer.start()
		
	if(Input.is_action_pressed("secondary_action") and can_grenade):
		print("shoot grenade")
		can_grenade = false
		$Timer2.start()

func _on_timer_timeout():
	can_lazer = true

func _on_timer_2_timeout():
	can_grenade = true
