extends Node2D

var q_PrimitiveMesh : PrimitiveMesh = CapsuleMesh.new()
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
			q_PrimitiveMesh = CapsuleMesh.new()
		
		
		if randi() % 2 == 1:
			q_PrimitiveMesh.set_material(Autoload.loadA("SpatialMaterial.tres"))
		if randi() % 2 == 1:
			q_PrimitiveMesh.set_custom_aabb(Autoload.get_aabb())
		if randi() % 2 == 1:
			q_PrimitiveMesh.set_flip_faces(Autoload.get_bool())
		
		if Autoload.SLOW_FUNCTIONS:
			if randi() % 2 == 1:
				qq += str(q_PrimitiveMesh.get_mesh_arrays())
