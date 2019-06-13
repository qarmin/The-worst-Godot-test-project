extends MeshInstance

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		set_mesh(CubeMesh.new())
		set_skeleton_path(".")
		
		create_convex_collision()
		create_debug_tangents()
		create_trimesh_collision()
		qq += str(get_surface_material(0))
		qq += str(get_surface_material_count())
		set_surface_material(0, SpatialMaterial.new())
		
