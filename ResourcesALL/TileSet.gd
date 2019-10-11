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
			q_TileSet.autotile_clear_bitmask_map( Autoload.get_randi() )
		if randi() % 2 == 1:
			qq += str(q_TileSet.autotile_get_bitmask( Autoload.get_randi(), Vector2(Autoload.get_randf(),Autoload.get_randf()) ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.autotile_get_bitmask_mode( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.autotile_get_icon_coordinate( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.autotile_get_light_occluder( Autoload.get_randi(), Vector2(Autoload.get_randf(),Autoload.get_randf()) ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.autotile_get_navigation_polygon( Autoload.get_randi(), Vector2(Autoload.get_randf(),Autoload.get_randf()) ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.autotile_get_size( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.autotile_get_spacing( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.autotile_get_subtile_priority( Autoload.get_randi(), Vector2(Autoload.get_randf(),Autoload.get_randf()) ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.autotile_get_z_index( Autoload.get_randi(), Vector2(Autoload.get_randf(),Autoload.get_randf()) ))
		if randi() % 2 == 1:
			q_TileSet.autotile_set_bitmask( Autoload.get_randi(), Vector2(Autoload.get_randf(),Autoload.get_randf()), Autoload.get_randi() ) #AutotileBindings
		if randi() % 2 == 1:
			q_TileSet.autotile_set_bitmask_mode( Autoload.get_randi(), Autoload.get_randi()) #BitmaskMode
		if randi() % 2 == 1:
			q_TileSet.autotile_set_icon_coordinate( Autoload.get_randi(), Vector2(Autoload.get_randf(),Autoload.get_randf()) )
		if randi() % 2 == 1:
			q_TileSet.autotile_set_light_occluder( Autoload.get_randi(), OccluderPolygon2D.new(), Vector2(Autoload.get_randf(),Autoload.get_randf()) )
		if randi() % 2 == 1:
			q_TileSet.autotile_set_navigation_polygon( Autoload.get_randi(), NavigationPolygon.new(), Vector2(Autoload.get_randf(),Autoload.get_randf()) )
		if randi() % 2 == 1:
			q_TileSet.autotile_set_size( Autoload.get_randi(), Vector2(Autoload.get_randf(),Autoload.get_randf()) )
		if randi() % 2 == 1:
			q_TileSet.autotile_set_spacing( Autoload.get_randi(), Autoload.get_randi() )
		if randi() % 2 == 1:
			q_TileSet.autotile_set_subtile_priority( Autoload.get_randi(), Vector2(Autoload.get_randf(),Autoload.get_randf()), Autoload.get_randi())
		if randi() % 2 == 1:
			q_TileSet.autotile_set_z_index( Autoload.get_randi(), Vector2(Autoload.get_randf(),Autoload.get_randf()), Autoload.get_randi() )
			
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
			q_TileSet.tile_add_shape( Autoload.get_randi(), RectangleShape2D.new(), Transform2D(Vector2(Autoload.get_randf(),Autoload.get_randf()),Vector2(Autoload.get_randf(),Autoload.get_randf()),Vector2(Autoload.get_randf(),Autoload.get_randf())), bool(randi()%2), Vector2(Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			qq += str(q_TileSet.tile_get_light_occluder( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.tile_get_material( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.tile_get_modulate( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.tile_get_name( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.tile_get_navigation_polygon( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.tile_get_navigation_polygon_offset( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.tile_get_normal_map( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.tile_get_occluder_offset( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.tile_get_region( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.tile_get_shape( Autoload.get_randi(), Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.tile_get_shape_count( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.tile_get_shape_offset( Autoload.get_randi(), Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.tile_get_shape_one_way( Autoload.get_randi(), Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.tile_get_shape_one_way_margin( Autoload.get_randi(), Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.tile_get_shape_transform( Autoload.get_randi(), Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.tile_get_shapes( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.tile_get_texture( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.tile_get_texture_offset( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.tile_get_tile_mode( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_TileSet.tile_get_z_index( Autoload.get_randi() ))
		if randi() % 2 == 1:
			q_TileSet.tile_set_light_occluder( Autoload.get_randi(), OccluderPolygon2D.new())
		if randi() % 2 == 1:
			q_TileSet.tile_set_material( Autoload.get_randi(), ShaderMaterial.new() )
		if randi() % 2 == 1:
			q_TileSet.tile_set_modulate( Autoload.get_randi(), Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			q_TileSet.tile_set_name( Autoload.get_randi(), "Niesio" )
		if randi() % 2 == 1:
			q_TileSet.tile_set_navigation_polygon( Autoload.get_randi(), NavigationPolygon.new() )
		if randi() % 2 == 1:
			q_TileSet.tile_set_navigation_polygon_offset( Autoload.get_randi(), Vector2(Autoload.get_randf(),Autoload.get_randf()) )
		if randi() % 2 == 1:
			q_TileSet.tile_set_normal_map( Autoload.get_randi(), Texture.new() )
		if randi() % 2 == 1:
			q_TileSet.tile_set_occluder_offset( Autoload.get_randi(), Vector2(Autoload.get_randf(),Autoload.get_randf()) )
		if randi() % 2 == 1:
			q_TileSet.tile_set_region( Autoload.get_randi(), Rect2(Vector2(Autoload.get_randf(),Autoload.get_randf()),Vector2(Autoload.get_randf(),Autoload.get_randf())))
		if randi() % 2 == 1:
			q_TileSet.tile_set_shape( Autoload.get_randi(), Autoload.get_randi(), RectangleShape2D.new() )
		if randi() % 2 == 1:
			q_TileSet.tile_set_shape_offset( Autoload.get_randi(), Autoload.get_randi(), Vector2(Autoload.get_randf(),Autoload.get_randf()) )
		if randi() % 2 == 1:
			q_TileSet.tile_set_shape_one_way( Autoload.get_randi(), Autoload.get_randi(), bool(randi()%2) )
		if randi() % 2 == 1:
			q_TileSet.tile_set_shape_one_way_margin( Autoload.get_randi(), Autoload.get_randi(), Autoload.get_randf())
		if randi() % 2 == 1:
			q_TileSet.tile_set_shape_transform( Autoload.get_randi(), Autoload.get_randi(), Transform2D(Vector2(Autoload.get_randf(),Autoload.get_randf()),Vector2(Autoload.get_randf(),Autoload.get_randf()),Vector2(Autoload.get_randf(),Autoload.get_randf())) )
		if randi() % 2 == 1:
			q_TileSet.tile_set_shapes( Autoload.get_randi(), [BoxShape.new(),BoxShape.new()])
		if randi() % 2 == 1:
			q_TileSet.tile_set_texture( Autoload.get_randi(), Texture.new() )
		if randi() % 2 == 1:
			q_TileSet.tile_set_texture_offset( Autoload.get_randi(), Vector2(Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			q_TileSet.tile_set_tile_mode( Autoload.get_randi(), Autoload.get_randi() ) #TileMode
		if randi() % 2 == 1:
			q_TileSet.tile_set_z_index( Autoload.get_randi(), Autoload.get_randi() )
			
