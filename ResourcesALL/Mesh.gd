extends Node2D

var q_Mesh : Mesh = Mesh.new()
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
			q_Mesh = Mesh.new()
		
		if randi() % 2 == 1:
			qq += str(q_Mesh.create_convex_shape())
		if randi() % 2 == 1:
			qq += str(q_Mesh.create_outline( Autoload.get_randf()))
		if randi() % 2 == 1:
			qq += str(q_Mesh.create_trimesh_shape())
		if randi() % 2 == 1:
			qq += str(q_Mesh.generate_triangle_mesh())
		if randi() % 2 == 1:
			qq += str(q_Mesh.get_faces())
		if randi() % 2 == 1:
			qq += str(q_Mesh.get_surface_count())
		if randi() % 2 == 1:
			qq += str(q_Mesh.surface_get_arrays( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_Mesh.surface_get_blend_shape_arrays( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_Mesh.surface_get_material( Autoload.get_randi() ))
		if randi() % 2 == 1:
			q_Mesh.surface_set_material( Autoload.get_randi(), SpatialMaterial.new())
