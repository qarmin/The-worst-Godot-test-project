extends Node2D

var q_ArrayMesh : ArrayMesh = ArrayMesh.new()
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
			q_ArrayMesh = ArrayMesh.new()
		
		
		if randi() % 2 == 1:
			q_ArrayMesh.set_blend_shape_mode(Autoload.get_randi()) # BlendShapeMode
		if randi() % 2 == 1:
			q_ArrayMesh.set_custom_aabb(AABB(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf())))
		if randi() % 2 == 1:
			q_ArrayMesh.add_blend_shape( "Rozmaryn" )
		if randi() % 2 == 1:
			q_ArrayMesh.add_surface_from_arrays( Autoload.get_randi(), [[214,124],[125,215]], [[214,124],[125,215]], randi() % 10000000) #PrimitiveType
		if randi() % 2 == 1:
			q_ArrayMesh.clear_blend_shapes()
		if randi() % 2 == 1:
			qq += str(q_ArrayMesh.get_blend_shape_count())
		if randi() % 2 == 1:
			qq += str(q_ArrayMesh.get_blend_shape_name( Autoload.get_randi()))
#SPAM		if randi() % 2 == 1:
#			qq += str(q_ArrayMesh.lightmap_unwrap( Transform(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf())),Autoload.get_randf()))
		if randi() % 2 == 1:
			q_ArrayMesh.regen_normalmaps()
		if randi() % 2 == 1:
			qq += str(q_ArrayMesh.surface_find_by_name( Autoload.get_string() ))
		if randi() % 2 == 1:
			qq += str(q_ArrayMesh.surface_get_array_index_len( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_ArrayMesh.surface_get_array_len( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_ArrayMesh.surface_get_format( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_ArrayMesh.surface_get_name( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_ArrayMesh.surface_get_primitive_type( Autoload.get_randi() ))
		if randi() % 2 == 1:
			q_ArrayMesh.surface_remove( Autoload.get_randi() )
		if randi() % 2 == 1:
			q_ArrayMesh.surface_set_name( Autoload.get_randi(), Autoload.get_string())
		if randi() % 2 == 1:
			q_ArrayMesh.surface_update_region( Autoload.get_randi(), Autoload.get_randi(), PoolByteArray([124,12,412421421,214,124,2]))
