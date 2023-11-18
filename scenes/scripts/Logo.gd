extends Sprite2D

var pos: Vector2 = Vector2.ZERO
var test_scale: int = 1
const speed: int = 100

func _ready():
#	print("ready")

#	position = Vector2(100, 200)

	pos = Vector2(300, 200)
	position = pos
	
#	var test_rotation = 45
#	rotation_degrees = test_rotation
	
	test_scale = 2
	scale = Vector2(test_scale, test_scale)
	
	print($"..".test_array)
	$"..".test_function()
	
func _process(delta):
#	print("process")

#	position.x += 10

	pos.x += speed * delta
	position = pos

#	test_scale += 1
#	scale = Vector2(test_scale, test_scale)
