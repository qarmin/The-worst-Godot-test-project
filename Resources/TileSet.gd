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
		
		var q_TileSet : TileSet = TileSet.new()
		
		### q_TileSet._forward_atlas_subtile_selection( int atlastile_id, Object tilemap, Vector2 tile_location )
		### q_TileSet._forward_subtile_selection( int autotile_id, int bitmask, Object tilemap, Vector2 tile_location )
		### q_TileSet._is_tile_bound( int drawn_id, int neighbor_id )
		
		#q_TileSet.autotile_clear_bitmask_map( 0 )
		#qq += str(q_TileSet.autotile_get_bitmask( 0, Vector2(randf() * 50,randf() * 50) ))
		#qq += str(q_TileSet.autotile_get_bitmask_mode( 0 ))
		#qq += str(q_TileSet.autotile_get_icon_coordinate( 0 ))
		#qq += str(q_TileSet.autotile_get_light_occluder( 0, Vector2(randf() * 50,randf() * 50) ))
		#qq += str(q_TileSet.autotile_get_navigation_polygon( 0, Vector2(randf() * 50,randf() * 50) ))
		#qq += str(q_TileSet.autotile_get_size( 0 ))
		#qq += str(q_TileSet.autotile_get_spacing( 0 ))
		#qq += str(q_TileSet.autotile_get_subtile_priority( 0, Vector2(randf() * 50,randf() * 50) ))
		#qq += str(q_TileSet.autotile_get_z_index( 0, Vector2(randf() * 50,randf() * 50) ))
		#q_TileSet.autotile_set_bitmask( 0, Vector2(randf() * 50,randf() * 50), randi() % 512 ) #AutotileBindings
		#q_TileSet.autotile_set_bitmask_mode( 0, randi() % 3) #BitmaskMode
		#q_TileSet.autotile_set_icon_coordinate( 0, Vector2(randf() * 50,randf() * 50) )
		#q_TileSet.autotile_set_light_occluder( 0, OccluderPolygon2D.new(), Vector2(randf() * 50,randf() * 50) )
		#q_TileSet.autotile_set_navigation_polygon( 0, NavigationPolygon.new(), Vector2(randf() * 50,randf() * 50) )
		#q_TileSet.autotile_set_size( 0, Vector2(randf() * 50,randf() * 50) )
		#q_TileSet.autotile_set_spacing( 0, randi()%50 )
		#q_TileSet.autotile_set_subtile_priority( 0, Vector2(randf() * 50,randf() * 50), randi()%50)
		#q_TileSet.autotile_set_z_index( 0, Vector2(randf() * 50,randf() * 50), randi()%50 )
		
		#MOVED q_TileSet.clear()
		
		for i in range(4):
			q_TileSet.create_tile(i)
		qq += str(q_TileSet.find_tile_by_name( "Hehemot" ))
		
		qq += str(q_TileSet.get_last_unused_tile_id())
		qq += str(q_TileSet.get_tiles_ids())
		
		#q_TileSet.tile_add_shape( 0, Shape2D.new(), Transform2D(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)), bool(randi()%2), Vector2(randf() * 50,randf() * 50))
		qq += str(q_TileSet.tile_get_light_occluder( 0 ))
		qq += str(q_TileSet.tile_get_material( 0 ))
		qq += str(q_TileSet.tile_get_modulate( 0 ))
		qq += str(q_TileSet.tile_get_name( 0 ))
		qq += str(q_TileSet.tile_get_navigation_polygon( 0 ))
		qq += str(q_TileSet.tile_get_navigation_polygon_offset( 0 ))
		qq += str(q_TileSet.tile_get_normal_map( 0 ))
		qq += str(q_TileSet.tile_get_occluder_offset( 0 ))
		qq += str(q_TileSet.tile_get_region( 0 ))
		qq += str(q_TileSet.tile_get_shape( 0, 0 ))
		qq += str(q_TileSet.tile_get_shape_count( 0 ))
		qq += str(q_TileSet.tile_get_shape_offset( 0, 0 ))
		qq += str(q_TileSet.tile_get_shape_one_way( 0, 0 ))
		qq += str(q_TileSet.tile_get_shape_one_way_margin( 0, 0 ))
		qq += str(q_TileSet.tile_get_shape_transform( 0, 0 ))
		qq += str(q_TileSet.tile_get_shapes( 0 ))
		qq += str(q_TileSet.tile_get_texture( 0 ))
		qq += str(q_TileSet.tile_get_texture_offset( 0 ))
		qq += str(q_TileSet.tile_get_tile_mode( 0 ))
		qq += str(q_TileSet.tile_get_z_index( 0 ))
		q_TileSet.tile_set_light_occluder( 0, OccluderPolygon2D.new())
		q_TileSet.tile_set_material( 0, ShaderMaterial.new() )
		q_TileSet.tile_set_modulate( 0, Color(randf(),randf(),randf(),randf()))
		q_TileSet.tile_set_name( 0, "Niesio" )
		q_TileSet.tile_set_navigation_polygon( 0, NavigationPolygon.new() )
		q_TileSet.tile_set_navigation_polygon_offset( 0, Vector2(randf() * 50,randf() * 50) )
		#q_TileSet.tile_set_normal_map( 0, Texture.new() )
		q_TileSet.tile_set_occluder_offset( 0, Vector2(randf() * 50,randf() * 50) )
		q_TileSet.tile_set_region( 0, Rect2(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)))
		#q_TileSet.tile_set_shape( 0, 0, Shape2D.new() )
		q_TileSet.tile_set_shape_offset( 0, 0, Vector2(randf() * 50,randf() * 50) )
		q_TileSet.tile_set_shape_one_way( 0, 0, bool(randi()%2) )
		q_TileSet.tile_set_shape_one_way_margin( 0, 0, randf() * 50)
		q_TileSet.tile_set_shape_transform( 0, 0, Transform2D(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)) )
		#q_TileSet.tile_set_shapes( 0, [Shape.new(),Shape.new()])
		#q_TileSet.tile_set_texture( 0, Texture.new() )
		q_TileSet.tile_set_texture_offset( 0, Vector2(randf() * 50,randf() * 50))
		q_TileSet.tile_set_tile_mode( 0, randi() % 3 ) #TileMode
		q_TileSet.tile_set_z_index( 0, randi()%50 )
		
		q_TileSet.clear() #MOVED
		
		if Autoload.WRONG_BUGS:
			### q_TileSet._forward_atlas_subtile_selection( int atlastile_id, Object tilemap, Vector2 tile_location )
			### q_TileSet._forward_subtile_selection( int autotile_id, int bitmask, Object tilemap, Vector2 tile_location )
			### q_TileSet._is_tile_bound( int drawn_id, int neighbor_id )
			
			q_TileSet.autotile_clear_bitmask_map( randi() % 1000 - 500 )
			qq += str(q_TileSet.autotile_get_bitmask( randi() % 1000 - 500, Vector2(randf() * 1000 - 500,randf() * 1000 - 500) ))
			qq += str(q_TileSet.autotile_get_bitmask_mode( randi() % 1000 - 500 ))
			qq += str(q_TileSet.autotile_get_icon_coordinate( randi() % 1000 - 500 ))
			qq += str(q_TileSet.autotile_get_light_occluder( randi() % 1000 - 500, Vector2(randf() * 1000 - 500,randf() * 1000 - 500) ))
			qq += str(q_TileSet.autotile_get_navigation_polygon( randi() % 1000 - 500, Vector2(randf() * 1000 - 500,randf() * 1000 - 500) ))
			qq += str(q_TileSet.autotile_get_size( randi() % 1000 - 500 ))
			qq += str(q_TileSet.autotile_get_spacing( randi() % 1000 - 500 ))
			qq += str(q_TileSet.autotile_get_subtile_priority( randi() % 1000 - 500, Vector2(randf() * 1000 - 500,randf() * 1000 - 500) ))
			qq += str(q_TileSet.autotile_get_z_index( randi() % 1000 - 500, Vector2(randf() * 1000 - 500,randf() * 1000 - 500) ))
			q_TileSet.autotile_set_bitmask( randi() % 1000 - 500, Vector2(randf() * 1000 - 500,randf() * 1000 - 500), randi() % 1000 - 500 ) #AutotileBindings
			q_TileSet.autotile_set_bitmask_mode( randi() % 1000 - 500, randi() % 1000 - 500) #BitmaskMode
			q_TileSet.autotile_set_icon_coordinate( randi() % 1000 - 500, Vector2(randf() * 1000 - 500,randf() * 1000 - 500) )
			q_TileSet.autotile_set_light_occluder( randi() % 1000 - 500, OccluderPolygon2D.new(), Vector2(randf() * 1000 - 500,randf() * 1000 - 500) )
			q_TileSet.autotile_set_navigation_polygon( randi() % 1000 - 500, NavigationPolygon.new(), Vector2(randf() * 1000 - 500,randf() * 1000 - 500) )
			q_TileSet.autotile_set_size( randi() % 1000 - 500, Vector2(randf() * 1000 - 500,randf() * 1000 - 500) )
			q_TileSet.autotile_set_spacing( randi() % 1000 - 500, randi() % 1000 - 500 )
			q_TileSet.autotile_set_subtile_priority( randi() % 1000 - 500, Vector2(randf() * 1000 - 500,randf() * 1000 - 500), randi() % 1000 - 500)
			q_TileSet.autotile_set_z_index( randi() % 1000 - 500, Vector2(randf() * 1000 - 500,randf() * 1000 - 500), randi() % 1000 - 500 )
			
			#MOVED q_TileSet.clear()
			
			for i in range(4):
				q_TileSet.create_tile(i)
			qq += str(q_TileSet.find_tile_by_name( "Hehemot" ))
			
			qq += str(q_TileSet.get_last_unused_tile_id())
			qq += str(q_TileSet.get_tiles_ids())
			
			q_TileSet.tile_add_shape( randi() % 1000 - 500, Shape2D.new(), Transform2D(Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500)), bool(randi()%2), Vector2(randf() * 1000 - 500,randf() * 1000 - 500))
			qq += str(q_TileSet.tile_get_light_occluder( randi() % 1000 - 500 ))
			qq += str(q_TileSet.tile_get_material( randi() % 1000 - 500 ))
			qq += str(q_TileSet.tile_get_modulate( randi() % 1000 - 500 ))
			qq += str(q_TileSet.tile_get_name( randi() % 1000 - 500 ))
			qq += str(q_TileSet.tile_get_navigation_polygon( randi() % 1000 - 500 ))
			qq += str(q_TileSet.tile_get_navigation_polygon_offset( randi() % 1000 - 500 ))
			qq += str(q_TileSet.tile_get_normal_map( randi() % 1000 - 500 ))
			qq += str(q_TileSet.tile_get_occluder_offset( randi() % 1000 - 500 ))
			qq += str(q_TileSet.tile_get_region( randi() % 1000 - 500 ))
			qq += str(q_TileSet.tile_get_shape( randi() % 1000 - 500, randi() % 1000 - 500 ))
			qq += str(q_TileSet.tile_get_shape_count( randi() % 1000 - 500 ))
			#BUG qq += str(q_TileSet.tile_get_shape_offset( randi() % 1000 - 500, randi() % 1000 - 500 ))
			qq += str(q_TileSet.tile_get_shape_one_way( randi() % 1000 - 500, randi() % 1000 - 500 ))
			qq += str(q_TileSet.tile_get_shape_one_way_margin( randi() % 1000 - 500, randi() % 1000 - 500 ))
			#BUG qq += str(q_TileSet.tile_get_shape_transform( randi() % 1000 - 500, randi() % 1000 - 500 ))
			qq += str(q_TileSet.tile_get_shapes( randi() % 1000 - 500 ))
			qq += str(q_TileSet.tile_get_texture( randi() % 1000 - 500 ))
			qq += str(q_TileSet.tile_get_texture_offset( randi() % 1000 - 500 ))
			qq += str(q_TileSet.tile_get_tile_mode( randi() % 1000 - 500 ))
			qq += str(q_TileSet.tile_get_z_index( randi() % 1000 - 500 ))
			q_TileSet.tile_set_light_occluder( randi() % 1000 - 500, OccluderPolygon2D.new())
			q_TileSet.tile_set_material( randi() % 1000 - 500, ShaderMaterial.new() )
			q_TileSet.tile_set_modulate( randi() % 1000 - 500, Color(randf(),randf(),randf(),randf()))
			q_TileSet.tile_set_name( randi() % 1000 - 500, "Niesio" )
			q_TileSet.tile_set_navigation_polygon( randi() % 1000 - 500, NavigationPolygon.new() )
			q_TileSet.tile_set_navigation_polygon_offset( randi() % 1000 - 500, Vector2(randf() * 1000 - 500,randf() * 1000 - 500) )
			q_TileSet.tile_set_normal_map( randi() % 1000 - 500, Texture.new() )
			q_TileSet.tile_set_occluder_offset( randi() % 1000 - 500, Vector2(randf() * 1000 - 500,randf() * 1000 - 500) )
			q_TileSet.tile_set_region( randi() % 1000 - 500, Rect2(Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500)))
			q_TileSet.tile_set_shape( randi() % 1000 - 500, randi() % 1000 - 500, Shape2D.new() )
			#BUG q_TileSet.tile_set_shape_offset( randi() % 1000 - 500, randi() % 1000 - 500, Vector2(randf() * 1000 - 500,randf() * 1000 - 500) )
			#BUG q_TileSet.tile_set_shape_one_way( randi() % 1000 - 500, randi() % 1000 - 500, bool(randi()%2) )
			q_TileSet.tile_set_shape_one_way_margin( randi() % 1000 - 500, randi() % 1000 - 500, randf() * 1000 - 500)
			q_TileSet.tile_set_shape_transform( randi() % 1000 - 500, randi() % 1000 - 500, Transform2D(Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500)) )
			q_TileSet.tile_set_shapes( randi() % 1000 - 500, [Shape.new(),Shape.new()])
			q_TileSet.tile_set_texture( randi() % 1000 - 500, Texture.new() )
			q_TileSet.tile_set_texture_offset( randi() % 1000 - 500, Vector2(randf() * 1000 - 500,randf() * 1000 - 500))
			q_TileSet.tile_set_tile_mode( randi() % 1000 - 500, randi() % 1000 - 500 ) #TileMode
			q_TileSet.tile_set_z_index( randi() % 1000 - 500, randi() % 1000 - 500 )
			
			q_TileSet.clear() #MOVED
