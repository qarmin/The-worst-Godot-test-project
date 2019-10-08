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
			
		var q_ArrayMesh : ArrayMesh = ArrayMesh.new()
		if !Autoload.RANDI:
			
			q_ArrayMesh.set_blend_shape_mode(randi() % 2) # BlendShapeMode
			q_ArrayMesh.set_custom_aabb(AABB(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))
			q_ArrayMesh.add_blend_shape( "Rozmaryn" )
			#q_ArrayMesh.add_surface_from_arrays( randi() % 7, [[214,124],[125,215]], [[214,124],[125,215]], randi() % 10000000) #PrimitiveType
			q_ArrayMesh.clear_blend_shapes()
			qq += str(q_ArrayMesh.get_blend_shape_count())
			#qq += str(q_ArrayMesh.get_blend_shape_name( randi()%50))
			#SPAMMMMMqq += str(q_ArrayMesh.lightmap_unwrap( Transform(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)),randf() * 50))
			q_ArrayMesh.regen_normalmaps()
			qq += str(q_ArrayMesh.surface_find_by_name( "Bazylia" ))
			#qq += str(q_ArrayMesh.surface_get_array_index_len( randi()%50 ))
			#qq += str(q_ArrayMesh.surface_get_array_len( randi()%50 ))
			#qq += str(q_ArrayMesh.surface_get_format( randi()%50 ))
			#qq += str(q_ArrayMesh.surface_get_name( randi()%50 ))
			#qq += str(q_ArrayMesh.surface_get_primitive_type( randi()%50 ))
			#q_ArrayMesh.surface_remove( randi()%50 )
			#q_ArrayMesh.surface_set_name( randi()%50, "Majeranek")
			#q_ArrayMesh.surface_update_region( randi()%50, randi()%50, PoolByteArray([124,12,412421421,214,124,2]))
			
			
			if Autoload.WRONG_BUGS:
				q_ArrayMesh.set_blend_shape_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) # BlendShapeMode
				q_ArrayMesh.set_custom_aabb(AABB(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
				q_ArrayMesh.add_blend_shape( "Rozmaryn" )
				q_ArrayMesh.add_surface_from_arrays( randi() % Autoload.RANGE - Autoload.RANGE / 2, [[214,124],[125,215]], [[214,124],[125,215]], randi() % 10000000) #PrimitiveType
				q_ArrayMesh.clear_blend_shapes()
				qq += str(q_ArrayMesh.get_blend_shape_count())
				qq += str(q_ArrayMesh.get_blend_shape_name( randi() % Autoload.RANGE - Autoload.RANGE / 2))
				#qq += str(q_ArrayMesh.lightmap_unwrap( Transform(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)),randf() * Autoload.RANGE - Autoload.RANGE / 2))
				q_ArrayMesh.regen_normalmaps()
				qq += str(q_ArrayMesh.surface_find_by_name( "Bazylia" ))
				qq += str(q_ArrayMesh.surface_get_array_index_len( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				qq += str(q_ArrayMesh.surface_get_array_len( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				qq += str(q_ArrayMesh.surface_get_format( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				qq += str(q_ArrayMesh.surface_get_name( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				qq += str(q_ArrayMesh.surface_get_primitive_type( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				q_ArrayMesh.surface_remove( randi() % Autoload.RANGE - Autoload.RANGE / 2 )
				q_ArrayMesh.surface_set_name( randi() % Autoload.RANGE - Autoload.RANGE / 2, "Majeranek")
				q_ArrayMesh.surface_update_region( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, PoolByteArray([124,12,412421421,214,124,2]))

		else: #RANDI
			if randi() % 2 == 1:
				q_ArrayMesh.set_blend_shape_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) # BlendShapeMode
			if randi() % 2 == 1:
				q_ArrayMesh.set_custom_aabb(AABB(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
			if randi() % 2 == 1:
				q_ArrayMesh.add_blend_shape( "Rozmaryn" )
			if randi() % 2 == 1:
				q_ArrayMesh.add_surface_from_arrays( randi() % Autoload.RANGE - Autoload.RANGE / 2, [[214,124],[125,215]], [[214,124],[125,215]], randi() % 10000000) #PrimitiveType
			if randi() % 2 == 1:
				q_ArrayMesh.clear_blend_shapes()
			if randi() % 2 == 1:
				qq += str(q_ArrayMesh.get_blend_shape_count())
			if randi() % 2 == 1:
				qq += str(q_ArrayMesh.get_blend_shape_name( randi() % Autoload.RANGE - Autoload.RANGE / 2))
				#qq += str(q_ArrayMesh.lightmap_unwrap( Transform(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)),randf() * Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				q_ArrayMesh.regen_normalmaps()
			if randi() % 2 == 1:
				qq += str(q_ArrayMesh.surface_find_by_name( "Bazylia" ))
			if randi() % 2 == 1:
				qq += str(q_ArrayMesh.surface_get_array_index_len( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
			if randi() % 2 == 1:
				qq += str(q_ArrayMesh.surface_get_array_len( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
			if randi() % 2 == 1:
				qq += str(q_ArrayMesh.surface_get_format( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
			if randi() % 2 == 1:
				qq += str(q_ArrayMesh.surface_get_name( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
			if randi() % 2 == 1:
				qq += str(q_ArrayMesh.surface_get_primitive_type( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
			if randi() % 2 == 1:
				q_ArrayMesh.surface_remove( randi() % Autoload.RANGE - Autoload.RANGE / 2 )
			if randi() % 2 == 1:
				q_ArrayMesh.surface_set_name( randi() % Autoload.RANGE - Autoload.RANGE / 2, "Majeranek")
			if randi() % 2 == 1:
				q_ArrayMesh.surface_update_region( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, PoolByteArray([124,12,412421421,214,124,2]))
