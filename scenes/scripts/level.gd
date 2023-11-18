extends Node2D

var test_array: Array[String] = ["Test", "Hello", "stuff"]

func _ready():
#	print("level node is ready")
#	get_node("Logo").rotation_degrees = 90
	$Logo.rotation_degrees = 90
	
#	for i in test_array:
#		print(i)
#
#	print(test_array[0])
	print($Sprite2D/Sprite2D2/Sprite2D3/Input)
	print(%Input)
	
func _process(delta):
	$Logo.rotation_degrees += 100 * delta
	
#	if($Logo.rotation_degrees > 180):
#		$Logo.rotation_degrees = 0
	
	if($Logo.pos.x > 1000):
		print("position exceeded")
		$Logo.pos.x = 0
	
#	print(Input.is_action_pressed("left"))
