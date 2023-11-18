extends Node2D

func _on_gate_player_entered_gate():
	print("player entered gate")

func _on_gate_player_exited_gate():
	print("player exited gate")

func _on_player_lazer():
	print("lazer from level")

func _on_player_grenade():
	print("grenade from level")
