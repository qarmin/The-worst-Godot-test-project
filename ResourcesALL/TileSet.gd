extends Node2D

var q_TileSet : TileSet = TileSet.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_TileSet,true)

func nodeFunction(q_TileSet : TileSet, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_TileSet = TileSet.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_TileSet)
		
	### START TEMP
	var temp_OccluderPolygon2D : OccluderPolygon2D = OccluderPolygon2D.new()
	AutoResourcesOccluderPolygon2D.nodeFunction(temp_OccluderPolygon2D)
	
	var temp_NavigationPolygon : NavigationPolygon = NavigationPolygon.new()
	AutoResourcesNavigationPolygon.nodeFunction(temp_NavigationPolygon)
	
	var temp_RectangleShape2D : RectangleShape2D = RectangleShape2D.new()
	AutoResourcesRectangleShape2D.nodeFunction(temp_RectangleShape2D)
	
	var temp_ShaderMaterial : ShaderMaterial = ShaderMaterial.new()
	AutoResourcesShaderMaterial.nodeFunction(temp_ShaderMaterial)
	
	var temp_ImageTexture : ImageTexture = ImageTexture.new()
	AutoResourcesImageTexture.nodeFunction(temp_ImageTexture)
	
	### END TEMP

	### q_TileSet._forward_atlas_subtile_selection( int atlastile_id, Object tilemap, Vector2 tile_location )
	### q_TileSet._forward_subtile_selection( int autotile_id, int bitmask, Object tilemap, Vector2 tile_location )
	### q_TileSet._is_tile_bound( int drawn_id, int neighbor_id )

	if randi() % 2 == 1:
		q_TileSet.autotile_clear_bitmask_map( Autoload.get_int())
	if randi() % 2 == 1:
		q_TileSet.autotile_get_bitmask( Autoload.get_int(), Autoload.get_vector2())
	if randi() % 2 == 1:
		q_TileSet.autotile_get_bitmask_mode( Autoload.get_int())
	if randi() % 2 == 1:
		q_TileSet.autotile_get_icon_coordinate( Autoload.get_int())
	if randi() % 2 == 1:
		q_TileSet.autotile_get_light_occluder( Autoload.get_int(), Autoload.get_vector2())
	if randi() % 2 == 1:
		q_TileSet.autotile_get_navigation_polygon( Autoload.get_int(), Autoload.get_vector2())
	if randi() % 2 == 1:
		q_TileSet.autotile_get_size( Autoload.get_int())
	if randi() % 2 == 1:
		q_TileSet.autotile_get_spacing( Autoload.get_int())
	if randi() % 2 == 1:
		q_TileSet.autotile_get_subtile_priority( Autoload.get_int(), Autoload.get_vector2())
	if randi() % 2 == 1:
		q_TileSet.autotile_get_z_index( Autoload.get_int(), Autoload.get_vector2())
	if randi() % 2 == 1:
		q_TileSet.autotile_set_bitmask( Autoload.get_int(), Autoload.get_vector2(), Autoload.get_int()) #AutotileBindings
	if randi() % 2 == 1:
		q_TileSet.autotile_set_bitmask_mode( Autoload.get_int(), Autoload.get_int()) #BitmaskMode
	if randi() % 2 == 1:
		q_TileSet.autotile_set_icon_coordinate( Autoload.get_int(), Autoload.get_vector2())
	if randi() % 2 == 1:
		q_TileSet.autotile_set_light_occluder( Autoload.get_int(), temp_OccluderPolygon2D, Autoload.get_vector2())
	if randi() % 2 == 1:
		q_TileSet.autotile_set_navigation_polygon( Autoload.get_int(), temp_NavigationPolygon, Autoload.get_vector2())
	if randi() % 2 == 1:
		q_TileSet.autotile_set_size( Autoload.get_int(), Autoload.get_vector2())
	if randi() % 2 == 1:
		q_TileSet.autotile_set_spacing( Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_TileSet.autotile_set_subtile_priority( Autoload.get_int(), Autoload.get_vector2(), Autoload.get_int())
	if randi() % 2 == 1:
		q_TileSet.autotile_set_z_index( Autoload.get_int(), Autoload.get_vector2(), Autoload.get_int())

	if randi() % 2 == 1:
		q_TileSet.clear()

	for i in range(2):
		if randi() % 2 == 1:
			q_TileSet.create_tile(i)

	if randi() % 2 == 1:
		q_TileSet.find_tile_by_name( Autoload.get_string())

	if randi() % 2 == 1:
		q_TileSet.get_last_unused_tile_id()
	if randi() % 2 == 1:
		q_TileSet.get_tiles_ids()

	if randi() % 2 == 1:
		q_TileSet.tile_add_shape( Autoload.get_int(), temp_RectangleShape2D, Autoload.get_transform2d(), Autoload.get_bool(), Autoload.get_vector2())
	if randi() % 2 == 1:
		q_TileSet.tile_get_light_occluder( Autoload.get_int())
	if randi() % 2 == 1:
		q_TileSet.tile_get_material( Autoload.get_int())
	if randi() % 2 == 1:
		q_TileSet.tile_get_modulate( Autoload.get_int())
	if randi() % 2 == 1:
		q_TileSet.tile_get_name( Autoload.get_int())
	if randi() % 2 == 1:
		q_TileSet.tile_get_navigation_polygon( Autoload.get_int())
	if randi() % 2 == 1:
		q_TileSet.tile_get_navigation_polygon_offset( Autoload.get_int())
	if randi() % 2 == 1:
		q_TileSet.tile_get_normal_map( Autoload.get_int())
	if randi() % 2 == 1:
		q_TileSet.tile_get_occluder_offset( Autoload.get_int())
	if randi() % 2 == 1:
		q_TileSet.tile_get_region( Autoload.get_int())
	if randi() % 2 == 1:
		q_TileSet.tile_get_shape( Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_TileSet.tile_get_shape_count( Autoload.get_int())
	if randi() % 2 == 1:
		q_TileSet.tile_get_shape_offset( Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_TileSet.tile_get_shape_one_way( Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_TileSet.tile_get_shape_one_way_margin( Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_TileSet.tile_get_shape_transform( Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_TileSet.tile_get_shapes( Autoload.get_int())
	if randi() % 2 == 1:
		q_TileSet.tile_get_texture( Autoload.get_int())
	if randi() % 2 == 1:
		q_TileSet.tile_get_texture_offset( Autoload.get_int())
	if randi() % 2 == 1:
		q_TileSet.tile_get_tile_mode( Autoload.get_int())
	if randi() % 2 == 1:
		q_TileSet.tile_get_z_index( Autoload.get_int())
	if randi() % 2 == 1:
		q_TileSet.tile_set_light_occluder( Autoload.get_int(), temp_OccluderPolygon2D)
	if randi() % 2 == 1:
		q_TileSet.tile_set_material( Autoload.get_int(), temp_ShaderMaterial)
	if randi() % 2 == 1:
		q_TileSet.tile_set_modulate( Autoload.get_int(), Autoload.get_color())
	if randi() % 2 == 1:
		q_TileSet.tile_set_name( Autoload.get_int(), Autoload.get_string())
	if randi() % 2 == 1:
		q_TileSet.tile_set_navigation_polygon( Autoload.get_int(), temp_NavigationPolygon)
	if randi() % 2 == 1:
		q_TileSet.tile_set_navigation_polygon_offset( Autoload.get_int(), Autoload.get_vector2())
	if randi() % 2 == 1:
		q_TileSet.tile_set_normal_map( Autoload.get_int(), temp_ImageTexture)
	if randi() % 2 == 1:
		q_TileSet.tile_set_occluder_offset( Autoload.get_int(), Autoload.get_vector2())
	if randi() % 2 == 1:
		q_TileSet.tile_set_region( Autoload.get_int(), Autoload.get_rect2())
	if randi() % 2 == 1:
		q_TileSet.tile_set_shape( Autoload.get_int(), Autoload.get_int(), temp_RectangleShape2D)
	if randi() % 2 == 1:
		q_TileSet.tile_set_shape_offset( Autoload.get_int(), Autoload.get_int(), Autoload.get_vector2())
	if randi() % 2 == 1:
		q_TileSet.tile_set_shape_one_way( Autoload.get_int(), Autoload.get_int(), Autoload.get_bool())
	if randi() % 2 == 1:
		q_TileSet.tile_set_shape_one_way_margin( Autoload.get_int(), Autoload.get_int(), Autoload.get_float())
	if randi() % 2 == 1:
		q_TileSet.tile_set_shape_transform( Autoload.get_int(), Autoload.get_int(), Autoload.get_transform2d())
	if randi() % 2 == 1:
		q_TileSet.tile_set_shapes( Autoload.get_int(), Autoload.get_array())
	if randi() % 2 == 1:
		q_TileSet.tile_set_texture( Autoload.get_int(), temp_ImageTexture)
	if randi() % 2 == 1:
		q_TileSet.tile_set_texture_offset( Autoload.get_int(), Autoload.get_vector2())
	if randi() % 2 == 1:
		q_TileSet.tile_set_tile_mode( Autoload.get_int(), Autoload.get_int()) #TileMode
	if randi() % 2 == 1:
		q_TileSet.tile_set_z_index( Autoload.get_int(), Autoload.get_int())

