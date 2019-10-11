extends TileMap

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
			clear()
		if randi() % 2 == 1:
			#BUG fix_invalid_tiles()
			pass
		if randi() % 2 == 1:
			set_mode(Autoload.get_randi())
		if randi() % 2 == 1:
			set_tileset(Autoload.loadA("res://RES/Tileset.tres"))
		if randi() % 2 == 1:
			set_cell_size(Vector2(Autoload.get_randf(), Autoload.get_randf()))
		if randi() % 2 == 1:
			set_custom_transform(Transform2D(Vector2(Autoload.get_randf(), Autoload.get_randf()),Vector2(Autoload.get_randf(), Autoload.get_randf()), Vector2(Autoload.get_randf(), Autoload.get_randf())))
		if randi() % 2 == 1:
			set_half_offset(Autoload.get_randi())
		if randi() % 2 == 1:
			set_tile_origin(Autoload.get_randi())
		if randi() % 2 == 1:
			set_y_sort_mode(bool(randi()%2))
		if randi() % 2 == 1:
			set_clip_uv(bool(randi()%2))
		if randi() % 2 == 1:
			set_collision_use_kinematic(bool(randi()%2))
		if randi() % 2 == 1:
			set_collision_friction(Autoload.get_randf())
		if randi() % 2 == 1:
			set_collision_bounce(Autoload.get_randf())
		if randi() % 2 == 1:
			set_collision_layer(Autoload.get_randi())
		if randi() % 2 == 1:
			set_collision_mask(Autoload.get_randi())
		if randi() % 2 == 1:
			set_occluder_light_mask(Autoload.get_randi())
			
		if randi() % 2 == 1:
			qq += str(get_cell(Autoload.get_randi(),Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(get_cell_autotile_coord(Autoload.get_randi(),Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(get_cellv(Vector2(Autoload.get_randf(), Autoload.get_randf())))
		if randi() % 2 == 1:
			qq += str(get_collision_layer_bit(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(get_collision_mask_bit(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(get_used_cells())
		if randi() % 2 == 1:
			qq += str(get_used_cells_by_id(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(get_used_rect())
		if randi() % 2 == 1:
			qq += str(is_cell_transposed(Autoload.get_randi(),Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(is_cell_x_flipped(Autoload.get_randi(),Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(is_cell_y_flipped(Autoload.get_randi(),Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(map_to_world(Vector2(Autoload.get_randf(), Autoload.get_randf()),bool(randi()%2)))
		if randi() % 2 == 1:
			set_cell(Autoload.get_randi(),Autoload.get_randi(),Autoload.get_randi(),bool(randi()%2),bool(randi()%2),bool(randi()%2),Vector2(Autoload.get_randf(), Autoload.get_randf()))
		if randi() % 2 == 1:
			set_cellv(Vector2(Autoload.get_randf(), Autoload.get_randf()),Autoload.get_randi(),bool(randi()%2),bool(randi()%2),bool(randi()%2))
		if randi() % 2 == 1:
			set_collision_layer_bit(Autoload.get_randi(),bool(randi()%2))
		if randi() % 2 == 1:
			set_collision_mask_bit(Autoload.get_randi(),bool(randi()%2))
		if randi() % 2 == 1:
			update_bitmask_area(Vector2(Autoload.get_randf(), Autoload.get_randf()))
#SPAM	if randi() % 2 == 1:
#			update_bitmask_region(Vector2(Autoload.get_randf(), Autoload.get_randf()),Vector2(Autoload.get_randf(), Autoload.get_randf()))
		if randi() % 2 == 1:
			update_dirty_quadrants()
		if randi() % 2 == 1:
			qq += str(world_to_map(Vector2(Autoload.get_randf(), Autoload.get_randf())))
