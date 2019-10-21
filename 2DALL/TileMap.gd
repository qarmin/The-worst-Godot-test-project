extends TileMap

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_CanvasItem(self)
		AutoObjects.A_Node2D(self)
		nodeFunction(self)

func nodeFunction(q_TileMap : TileMap, can_reset : bool = false) -> void:

		if randi() % 2 == 1:
			q_TileMap.clear()
#		if randi() % 2 == 1:
#			BUG q_TileMap.fix_invalid_tiles()
		if randi() % 2 == 1:
			q_TileMap.set_mode(Autoload.get_int())
		if randi() % 2 == 1:
			q_TileMap.set_tileset(Autoload.loadA("Tileset.tres"))
		if randi() % 2 == 1:
			q_TileMap.set_cell_size(Autoload.get_vector2())
		if randi() % 2 == 1:
			q_TileMap.set_custom_transform(Autoload.get_transform2d())
		if randi() % 2 == 1:
			q_TileMap.set_half_offset(Autoload.get_int())
		if randi() % 2 == 1:
			q_TileMap.set_tile_origin(Autoload.get_int())
		if randi() % 2 == 1:
			q_TileMap.set_y_sort_mode(Autoload.get_bool())
		if randi() % 2 == 1:
			q_TileMap.set_clip_uv(Autoload.get_bool())
		if randi() % 2 == 1:
			q_TileMap.set_collision_use_kinematic(Autoload.get_bool())
		if randi() % 2 == 1:
			q_TileMap.set_collision_friction(Autoload.get_float())
		if randi() % 2 == 1:
			q_TileMap.set_collision_bounce(Autoload.get_float())
		if randi() % 2 == 1:
			q_TileMap.set_collision_layer(Autoload.get_int())
		if randi() % 2 == 1:
			q_TileMap.set_collision_mask(Autoload.get_int())
		if randi() % 2 == 1:
			q_TileMap.set_occluder_light_mask(Autoload.get_int())

		if randi() % 2 == 1:
			q_TileMap.get_cell(Autoload.get_int(),Autoload.get_int())
		if randi() % 2 == 1:
			q_TileMap.get_cell_autotile_coord(Autoload.get_int(),Autoload.get_int())
		if randi() % 2 == 1:
			q_TileMap.get_cellv(Autoload.get_vector2())
		if randi() % 2 == 1:
			q_TileMap.get_collision_layer_bit(Autoload.get_int())
		if randi() % 2 == 1:
			q_TileMap.get_collision_mask_bit(Autoload.get_int())
		if randi() % 2 == 1:
			q_TileMap.get_used_cells()
		if randi() % 2 == 1:
			q_TileMap.get_used_cells_by_id(Autoload.get_int())
		if randi() % 2 == 1:
			q_TileMap.get_used_rect()
		if randi() % 2 == 1:
			q_TileMap.is_cell_transposed(Autoload.get_int(),Autoload.get_int())
		if randi() % 2 == 1:
			q_TileMap.is_cell_x_flipped(Autoload.get_int(),Autoload.get_int())
		if randi() % 2 == 1:
			q_TileMap.is_cell_y_flipped(Autoload.get_int(),Autoload.get_int())
		if randi() % 2 == 1:
			q_TileMap.map_to_world(Autoload.get_vector2(),Autoload.get_bool())
		if randi() % 2 == 1:
			q_TileMap.set_cell(Autoload.get_int(),Autoload.get_int(),Autoload.get_int(),Autoload.get_bool(),Autoload.get_bool(),Autoload.get_bool(),Autoload.get_vector2())
		if randi() % 2 == 1:
			q_TileMap.set_cellv(Autoload.get_vector2(),Autoload.get_int(),Autoload.get_bool(),Autoload.get_bool(),Autoload.get_bool())
		if randi() % 2 == 1:
			q_TileMap.set_collision_layer_bit(Autoload.get_int(),Autoload.get_bool())
		if randi() % 2 == 1:
			q_TileMap.set_collision_mask_bit(Autoload.get_int(),Autoload.get_bool())
		if randi() % 2 == 1:
			q_TileMap.update_bitmask_area(Autoload.get_vector2())
#SPAM	if randi() % 2 == 1:
#			q_TileMap.update_bitmask_region(Autoload.get_vector2(),Autoload.get_vector2())
		if randi() % 2 == 1:
			q_TileMap.update_dirty_quadrants()
		if randi() % 2 == 1:
			q_TileMap.world_to_map(Autoload.get_vector2())
