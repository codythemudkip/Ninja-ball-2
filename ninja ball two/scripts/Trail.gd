extends Line2D

var target
var point
export(NodePath) var targetPath

func _ready():
	target = get_node(targetPath)
	pass
	
func _process(delta):
	global_position = Vector2(0,0)
	global_rotation = 0
	point = global_position
	add_point(point)
	pass
