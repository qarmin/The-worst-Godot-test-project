extends TileMap

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _process(delta) -> void:
	counter -= delta
	
	#  Vector2(randf() * 50,randf() * 50))
	#  randf() * 50)
	#  bool(randi()%2))
	#  randi()%50)
	#  Color(randf(),randf(),randf(),randf()))
	#  load("res://Sprite" + str(randi()%4 + 1) + ".png"))
	
	if counter <= 0:
		set_mode(
		set_tileset(
		set_cell_size(
		set_custom_transform(
		set_half_offset(
		set_tile_origin(
		set_y_sort_mode(
		set_clip_uv(
		set_collision_use_kinematic(
		set_collision_friction(
		set_collision_bounce(
		set_collision_layer(
		set_collision_mask(
		set_occluder_light_mask(
		clear()
		fix_invalid_tiles()
		get_cell( 
		get_cell_autotile_coord(
		get_cellv(
		get_collision_layer_bit(
		get_collision_mask_bit(
		get_used_cells()
		get_used_cells_by_id(
		get_used_rect()
		is_cell_transposed(
		is_cell_x_flipped(
		is_cell_y_flipped(
		map_to_world(
		set_cell(
		set_cellv(
		set_collision_layer_bit(
		set_collision_mask_bit(
		update_bitmask_area(
		update_bitmask_region(
		update_dirty_quadrants()
		world_to_map(
		
		
		
		
		
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x