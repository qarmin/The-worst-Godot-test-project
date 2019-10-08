extends Node2D

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
			
		var q_Mesh : Mesh = Mesh.new()
		if !Autoload.RANDI:
			
			q_Mesh.set_lightmap_size_hint(Vector2(randf() * 50,randf() * 50))
			
			qq += str(q_Mesh.create_convex_shape())
			#qq += str(q_Mesh.create_outline( randf() * 50))
			qq += str(q_Mesh.create_trimesh_shape())
			qq += str(q_Mesh.generate_triangle_mesh())
			qq += str(q_Mesh.get_faces())
			qq += str(q_Mesh.get_surface_count())
			#qq += str(q_Mesh.surface_get_arrays( randi()%50 ))
			#qq += str(q_Mesh.surface_get_blend_shape_arrays( randi()%50 ))
			#qq += str(q_Mesh.surface_get_material( randi()%50 ))
			#q_Mesh.surface_set_material( randi()%50, SpatialMaterial.new())
			
			if Autoload.WRONG_BUGS:
				qq += str(q_Mesh.create_convex_shape())
				qq += str(q_Mesh.create_outline( randf() * Autoload.RANGE - Autoload.RANGE / 2))
				qq += str(q_Mesh.create_trimesh_shape())
				qq += str(q_Mesh.generate_triangle_mesh())
				qq += str(q_Mesh.get_faces())
				qq += str(q_Mesh.get_surface_count())
				qq += str(q_Mesh.surface_get_arrays( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				qq += str(q_Mesh.surface_get_blend_shape_arrays( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				qq += str(q_Mesh.surface_get_material( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				q_Mesh.surface_set_material( randi() % Autoload.RANGE - Autoload.RANGE / 2, SpatialMaterial.new())

		else: #RANDI
			if randi() % 2 == 1:
				qq += str(q_Mesh.create_convex_shape())
			if randi() % 2 == 1:
				qq += str(q_Mesh.create_outline( randf() * Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				qq += str(q_Mesh.create_trimesh_shape())
			if randi() % 2 == 1:
				qq += str(q_Mesh.generate_triangle_mesh())
			if randi() % 2 == 1:
				qq += str(q_Mesh.get_faces())
			if randi() % 2 == 1:
				qq += str(q_Mesh.get_surface_count())
			if randi() % 2 == 1:
				qq += str(q_Mesh.surface_get_arrays( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
			if randi() % 2 == 1:
				qq += str(q_Mesh.surface_get_blend_shape_arrays( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
			if randi() % 2 == 1:
				qq += str(q_Mesh.surface_get_material( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
			if randi() % 2 == 1:
				q_Mesh.surface_set_material( randi() % Autoload.RANGE - Autoload.RANGE / 2, SpatialMaterial.new())
