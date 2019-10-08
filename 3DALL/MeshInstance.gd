extends MeshInstance

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		if !Autoload.RANDI:
			
			set_mesh(CubeMesh.new())
			set_skeleton_path(".")
			
			create_convex_collision()
			create_debug_tangents()
			create_trimesh_collision()
			qq += str(get_surface_material(0))
			qq += str(get_surface_material_count())
			set_surface_material(0, SpatialMaterial.new())
			
			for i in get_children():
				i.queue_free()
			if Autoload.WRONG_BUGS:
				set_mesh(CubeMesh.new())
				set_skeleton_path(".")
				
				create_convex_collision()
				create_debug_tangents()
				create_trimesh_collision()
				qq += str(get_surface_material(randi() % Autoload.RANGE - Autoload.RANGE / 2))
				qq += str(get_surface_material_count())
				set_surface_material(randi() % Autoload.RANGE - Autoload.RANGE / 2, SpatialMaterial.new())
				
				for i in get_children():
					i.queue_free()
	
		else: #RANDI
			if randi() % 2 == 1:
				set_mesh(CubeMesh.new())
			if randi() % 2 == 1:
				set_skeleton_path(".")
				
			if randi() % 2 == 1:
				create_convex_collision()
			if randi() % 2 == 1:
				create_debug_tangents()
			if randi() % 2 == 1:
				create_trimesh_collision()
			if randi() % 2 == 1:
				qq += str(get_surface_material(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				qq += str(get_surface_material_count())
			if randi() % 2 == 1:
				set_surface_material(randi() % Autoload.RANGE - Autoload.RANGE / 2, SpatialMaterial.new())
				
#####################
			for i in get_children():
				i.queue_free()
