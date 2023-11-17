extends Node2D

func _ready():
	print("level node is ready")
#	get_node("Logo").rotation_degrees = 90
	$Logo.rotation_degrees = 90
	
func _process(delta):
	$Logo.rotation_degrees += 1
