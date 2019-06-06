extends TileMap

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	#  Vector2(randf() * 50,randf() * 50))
	#  randf() * 50)
	#  bool(randi()%2))
	#  randi()%50)
	#  Color(randf(),randf(),randf(),randf()))
	#  load("res://Sprite" + str(randi()%4 + 1) + ".png"))
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		clear()
		fix_invalid_tiles()
		set_mode(randi()%3)
		# TODO Tileset
		set_tileset(TileSet.new())
		set_cell_size(Vector2(randf() * 50 + 10,randf() * 50 + 10))
		set_custom_transform(Transform2D(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)))
		set_half_offset(randi()%5)
		set_tile_origin(randi()%3)
		set_y_sort_mode(bool(randi()%2))
		set_clip_uv(bool(randi()%2))
		set_collision_use_kinematic(bool(randi()%2))
		set_collision_friction(randf() * 50)
		set_collision_bounce(randf() * 50)
		set_collision_layer(randi()%20)
		set_collision_mask(randi()%20)
		set_occluder_light_mask(randi()%20)
		
		qq += str(get_cell(randi()%4,randi()%4))
		qq += str(get_cell_autotile_coord(randi()%4,randi()%4))
		qq += str(get_cellv(Vector2(randf() * 50,randf() * 50)))
		qq += str(get_collision_layer_bit(randi()%20))
		qq += str(get_collision_mask_bit(randi()%20))
		qq += str(get_used_cells())
		qq += str(get_used_cells_by_id(randi()%10))
		qq += str(get_used_rect())
		qq += str(is_cell_transposed(randi()%4,randi()%4))
		qq += str(is_cell_x_flipped(randi()%4,randi()%4))
		qq += str(is_cell_y_flipped(randi()%4,randi()%4))
		qq += str(map_to_world(Vector2(randf() * 50,randf() * 50),bool(randi()%2)))
		set_cell(randi()%4,randi()%4,randi()%4,bool(randi()%2),bool(randi()%2),bool(randi()%2),Vector2(randf() * 50,randf() * 50))
		set_cellv(Vector2(randf() * 50,randf() * 50),randi()%4,bool(randi()%2),bool(randi()%2),bool(randi()%2))
		set_collision_layer_bit(randi()%20,bool(randi()%2))
		set_collision_mask_bit(randi()%20,bool(randi()%2))
		#update_bitmask_area(Vector2(randf() * 50,randf() * 50))
		#update_bitmask_region(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50))
		update_dirty_quadrants()
		qq += str(world_to_map(Vector2(randf() * 50,randf() * 50)))