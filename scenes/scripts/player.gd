extends CharacterBody2D

signal lazer(position)
signal grenade

var can_lazer: bool = true
var can_grenade: bool = true

func _process(_delta):
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * 500
	move_and_slide()
	
	if(Input.is_action_pressed("primary_action") and can_lazer):
		var lazer_markers = $LazerStartPositions.get_children()
		var selected_lazer = lazer_markers[randi() % lazer_markers.size()]
		can_lazer = false
		$Timer.start()
		lazer.emit(selected_lazer.global_position)
		
	if(Input.is_action_pressed("secondary_action") and can_grenade):
		can_grenade = false
		$Timer2.start()
		grenade.emit()

func _on_timer_timeout():
	can_lazer = true

func _on_timer_2_timeout():
	can_grenade = true
