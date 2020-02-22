extends Node2D

var q_ArrayMesh : ArrayMesh = ArrayMesh.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_ArrayMesh,true)

func nodeFunction(q_ArrayMesh : ArrayMesh, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_ArrayMesh = ArrayMesh.new()
	if randi() % 2 == 1:
		AutoResourcesMesh.nodeFunction(q_ArrayMesh)

	if randi() % 2 == 1:
		q_ArrayMesh.set_blend_shape_mode(Autoload.get_int()) # BlendShapeMode
	if randi() % 2 == 1:
		q_ArrayMesh.set_custom_aabb(Autoload.get_aabb())
	if randi() % 2 == 1:
		q_ArrayMesh.add_blend_shape( Autoload.get_string())
#	if randi() % 2 == 1: MISSING
#		q_ArrayMesh.add_surface_from_arrays( Autoload.get_int(), Autoload.get_array(), Autoload.get_array(), Autoload.get_int()) #PrimitiveType
	if randi() % 2 == 1:
		q_ArrayMesh.clear_blend_shapes()
	if randi() % 2 == 1:
		q_ArrayMesh.get_blend_shape_count()
	if randi() % 2 == 1:
		q_ArrayMesh.get_blend_shape_name( Autoload.get_int())
#SPAM		if randi() % 2 == 1:
#			q_ArrayMesh.lightmap_unwrap( Autoload.get_transform(),Autoload.get_float())
	if randi() % 2 == 1:
		q_ArrayMesh.regen_normalmaps()
	if randi() % 2 == 1:
		q_ArrayMesh.surface_find_by_name( Autoload.get_string())
	if randi() % 2 == 1:
		q_ArrayMesh.surface_get_array_index_len( Autoload.get_int())
	if randi() % 2 == 1:
		q_ArrayMesh.surface_get_array_len( Autoload.get_int())
	if randi() % 2 == 1:
		q_ArrayMesh.surface_get_format( Autoload.get_int())
	if randi() % 2 == 1:
		q_ArrayMesh.surface_get_name( Autoload.get_int())
	if randi() % 2 == 1:
		q_ArrayMesh.surface_get_primitive_type( Autoload.get_int())
#	if randi() % 2 == 1:
#		q_ArrayMesh.surface_remove( Autoload.get_int())
	if randi() % 2 == 1:
		q_ArrayMesh.surface_set_name( Autoload.get_int(), Autoload.get_string())
	if randi() % 2 == 1:
		q_ArrayMesh.surface_update_region( Autoload.get_int(), Autoload.get_int(), Autoload.get_packedbytearray())
