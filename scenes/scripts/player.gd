extends CharacterBody2D

signal lazer(position, direction)
signal grenade(position, direction)

var can_lazer: bool = true
var can_grenade: bool = true

func _process(_delta):
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * 500
	move_and_slide()
	
	look_at(get_global_mouse_position())
	
	var player_direction = (get_global_mouse_position() - position).normalized()
	if(Input.is_action_pressed("primary_action") and can_lazer):
		var lazer_markers = $ProjectileStartPositions.get_children()
		var selected_lazer = lazer_markers[randi() % lazer_markers.size()]
		can_lazer = false
		$LazerTimer.start()
		lazer.emit(selected_lazer.global_position, player_direction)
		
	if(Input.is_action_pressed("secondary_action") and can_grenade):
		var grenade_markers = $ProjectileStartPositions.get_children()
		var selected_grenade = grenade_markers[randi() % grenade_markers.size()]
		can_grenade = false
		$GrenadeTimer.start()
		grenade.emit(selected_grenade.global_position, player_direction)

func _on_timer_timeout():
	can_lazer = true

func _on_timer_2_timeout():
	can_grenade = true
