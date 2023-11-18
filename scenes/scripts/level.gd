extends Node2D

var lazer_scene: PackedScene = preload("res://scenes/projectiles/lazer.tscn")

func _on_gate_player_entered_gate():
	print("player entered gate")

func _on_gate_player_exited_gate():
	print("player exited gate")

func _on_player_lazer(pos):
	var lazer = lazer_scene.instantiate()
	lazer.position = pos
	$Projectiles.add_child(lazer)

func _on_player_grenade():
	print("grenade from level")
