extends Node2D

var lazer_scene: PackedScene = preload("res://scenes/projectiles/lazer.tscn")
var grenade_scne: PackedScene = preload("res://scenes/projectiles/grenade.tscn")

func _on_gate_player_entered_gate():
	print("player entered gate")

func _on_gate_player_exited_gate():
	print("player exited gate")

func _on_player_lazer(pos, direction):
	var lazer = lazer_scene.instantiate() as Area2D
	lazer.position = pos
	lazer.rotation_degrees = rad_to_deg(direction.angle())
	lazer.direction = direction
	$Projectiles.add_child(lazer)

func _on_player_grenade(pos, direction):
	var grenade = grenade_scne.instantiate() as RigidBody2D
	grenade.position = pos
	grenade.linear_velocity = direction * grenade.speed
	$Projectiles.add_child(grenade)
