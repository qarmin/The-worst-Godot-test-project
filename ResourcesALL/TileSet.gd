extends Node2D

var q_TileSet : TileSet = TileSet.new()
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
			q_TileSet = TileSet.new()
			
		
		### q_TileSet._forward_atlas_subtile_selection( int atlastile_id, Object tilemap, Vector2 tile_location )
		### q_TileSet._forward_subtile_selection( int autotile_id, int bitmask, Object tilemap, Vector2 tile_location )
		### q_TileSet._is_tile_bound( int drawn_id, int neighbor_id )
			
		if randi() % 2 == 1:
			q_TileSet.autotile_clear_bitmask_map( randi() % Autoload.RANGE - Autoload.RANGE / 2 )
		if randi() % 2 == 1:
			qq += str(q_TileSet.autotile_get_bitmask( randi() % Autoload.RANGE - Autoload.RANGE / 2, Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2) ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.autotile_get_bitmask_mode( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.autotile_get_icon_coordinate( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.autotile_get_light_occluder( randi() % Autoload.RANGE - Autoload.RANGE / 2, Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2) ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.autotile_get_navigation_polygon( randi() % Autoload.RANGE - Autoload.RANGE / 2, Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2) ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.autotile_get_size( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.autotile_get_spacing( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.autotile_get_subtile_priority( randi() % Autoload.RANGE - Autoload.RANGE / 2, Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2) ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.autotile_get_z_index( randi() % Autoload.RANGE - Autoload.RANGE / 2, Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2) ))
		if randi() % 2 == 1:
			q_TileSet.autotile_set_bitmask( randi() % Autoload.RANGE - Autoload.RANGE / 2, Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2), randi() % Autoload.RANGE - Autoload.RANGE / 2 ) #AutotileBindings
		if randi() % 2 == 1:
			q_TileSet.autotile_set_bitmask_mode( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2) #BitmaskMode
		if randi() % 2 == 1:
			q_TileSet.autotile_set_icon_coordinate( randi() % Autoload.RANGE - Autoload.RANGE / 2, Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2) )
		if randi() % 2 == 1:
			q_TileSet.autotile_set_light_occluder( randi() % Autoload.RANGE - Autoload.RANGE / 2, OccluderPolygon2D.new(), Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2) )
		if randi() % 2 == 1:
			q_TileSet.autotile_set_navigation_polygon( randi() % Autoload.RANGE - Autoload.RANGE / 2, NavigationPolygon.new(), Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2) )
		if randi() % 2 == 1:
			q_TileSet.autotile_set_size( randi() % Autoload.RANGE - Autoload.RANGE / 2, Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2) )
		if randi() % 2 == 1:
			q_TileSet.autotile_set_spacing( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 )
		if randi() % 2 == 1:
			q_TileSet.autotile_set_subtile_priority( randi() % Autoload.RANGE - Autoload.RANGE / 2, Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2), randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_TileSet.autotile_set_z_index( randi() % Autoload.RANGE - Autoload.RANGE / 2, Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2), randi() % Autoload.RANGE - Autoload.RANGE / 2 )
			
		if randi() % 2 == 1:
			q_TileSet.clear()
			
		for i in range(2):
			if randi() % 2 == 1:
				q_TileSet.create_tile(i)

		if randi() % 2 == 1:
			qq += str(q_TileSet.find_tile_by_name( "Hehemot" ))
			
		if randi() % 2 == 1:
			qq += str(q_TileSet.get_last_unused_tile_id())
		if randi() % 2 == 1:
			qq += str(q_TileSet.get_tiles_ids())
			
		if randi() % 2 == 1:
			q_TileSet.tile_add_shape( randi() % Autoload.RANGE - Autoload.RANGE / 2, Shape2D.new(), Transform2D(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)), bool(randi()%2), Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(q_TileSet.tile_get_light_occluder( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.tile_get_material( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.tile_get_modulate( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.tile_get_name( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.tile_get_navigation_polygon( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.tile_get_navigation_polygon_offset( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.tile_get_normal_map( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.tile_get_occluder_offset( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.tile_get_region( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.tile_get_shape( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.tile_get_shape_count( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.tile_get_shape_offset( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.tile_get_shape_one_way( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.tile_get_shape_one_way_margin( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.tile_get_shape_transform( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.tile_get_shapes( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.tile_get_texture( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.tile_get_texture_offset( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.tile_get_tile_mode( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.tile_get_z_index( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			q_TileSet.tile_set_light_occluder( randi() % Autoload.RANGE - Autoload.RANGE / 2, OccluderPolygon2D.new())
		if randi() % 2 == 1:
			q_TileSet.tile_set_material( randi() % Autoload.RANGE - Autoload.RANGE / 2, ShaderMaterial.new() )
		if randi() % 2 == 1:
			q_TileSet.tile_set_modulate( randi() % Autoload.RANGE - Autoload.RANGE / 2, Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			q_TileSet.tile_set_name( randi() % Autoload.RANGE - Autoload.RANGE / 2, "Niesio" )
		if randi() % 2 == 1:
			q_TileSet.tile_set_navigation_polygon( randi() % Autoload.RANGE - Autoload.RANGE / 2, NavigationPolygon.new() )
		if randi() % 2 == 1:
			q_TileSet.tile_set_navigation_polygon_offset( randi() % Autoload.RANGE - Autoload.RANGE / 2, Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2) )
		if randi() % 2 == 1:
			q_TileSet.tile_set_normal_map( randi() % Autoload.RANGE - Autoload.RANGE / 2, Texture.new() )
		if randi() % 2 == 1:
			q_TileSet.tile_set_occluder_offset( randi() % Autoload.RANGE - Autoload.RANGE / 2, Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2) )
		if randi() % 2 == 1:
			q_TileSet.tile_set_region( randi() % Autoload.RANGE - Autoload.RANGE / 2, Rect2(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
		if randi() % 2 == 1:
			q_TileSet.tile_set_shape( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, Shape2D.new() )
		if randi() % 2 == 1:
			q_TileSet.tile_set_shape_offset( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2) )
		if randi() % 2 == 1:
			q_TileSet.tile_set_shape_one_way( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, bool(randi()%2) )
		if randi() % 2 == 1:
			q_TileSet.tile_set_shape_one_way_margin( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_TileSet.tile_set_shape_transform( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, Transform2D(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)) )
		if randi() % 2 == 1:
			q_TileSet.tile_set_shapes( randi() % Autoload.RANGE - Autoload.RANGE / 2, [Shape.new(),Shape.new()])
		if randi() % 2 == 1:
			q_TileSet.tile_set_texture( randi() % Autoload.RANGE - Autoload.RANGE / 2, Texture.new() )
		if randi() % 2 == 1:
			q_TileSet.tile_set_texture_offset( randi() % Autoload.RANGE - Autoload.RANGE / 2, Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			q_TileSet.tile_set_tile_mode( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 ) #TileMode
		if randi() % 2 == 1:
			q_TileSet.tile_set_z_index( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 )
			
