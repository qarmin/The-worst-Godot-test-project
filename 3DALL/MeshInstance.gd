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

		if randi() % 2 == 1:
			set_mesh(CubeMesh.new())
		if randi() % 2 == 1:
			set_skeleton_path(Autoload.get_nodepath(self))
			
#	BUG	if randi() % 2 == 1:
#			create_convex_collision()
		if randi() % 2 == 1:
			create_debug_tangents()
		if randi() % 2 == 1:
			create_trimesh_collision()
		if randi() % 2 == 1:
			qq += str(get_surface_material(Autoload.get_int()))
		if randi() % 2 == 1:
			qq += str(get_surface_material_count())
		if randi() % 2 == 1:
			set_surface_material(Autoload.get_int(), SpatialMaterial.new())
				
#####################
		if randi() % 2 == 1:
			for i in get_children():
				i.queue_free()
