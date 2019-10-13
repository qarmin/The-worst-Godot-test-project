extends Node2D

var q_CubeMesh : CubeMesh = CubeMesh.new()
var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		if randi() % 2 == 1:
			q_CubeMesh = CubeMesh.new()
			
		
		if randi() % 2 == 1:
			q_CubeMesh.set_size(Autoload.get_vector3())
		if randi() % 2 == 1:
			q_CubeMesh.set_subdivide_width(randi() % 10 - 8) 
		if randi() % 2 == 1:
			q_CubeMesh.set_subdivide_height(randi() % 10 - 8)
		if randi() % 2 == 1:
			q_CubeMesh.set_subdivide_depth(randi() % 10 - 8)
