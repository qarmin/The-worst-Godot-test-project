extends GridMap

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

		if randi() % 2 == 1:
			set_theme(MeshLibrary.new())
		if randi() % 2 == 1:
			set_mesh_library(MeshLibrary.new())
		if randi() % 2 == 1:
			set_cell_size(Autoload.get_vector3())
		if randi() % 2 == 1:
			set_octant_size(Autoload.get_int())
		if randi() % 2 == 1:
			set_center_x(Autoload.get_bool())
		if randi() % 2 == 1:
			set_center_y(Autoload.get_bool())
		if randi() % 2 == 1:
			set_center_z(Autoload.get_bool())
		if randi() % 2 == 1:
			set_cell_scale(Autoload.get_float())
		if randi() % 2 == 1:
			set_collision_layer(Autoload.get_int())
		if randi() % 2 == 1:
			set_collision_mask(Autoload.get_int())
			
		if randi() % 2 == 1:
			clear()
		if randi() % 2 == 1:
			clear_baked_meshes()
			
		if randi() % 2 == 1:
			qq += str(get_bake_mesh_instance(Autoload.get_int()))
		if randi() % 2 == 1:
			qq += str(get_bake_meshes())
		if randi() % 2 == 1:
			qq += str(get_cell_item(Autoload.get_int(),Autoload.get_int(),Autoload.get_int()))
		if randi() % 2 == 1:
			qq += str(get_cell_item_orientation(Autoload.get_int(),Autoload.get_int(),Autoload.get_int()))
		if randi() % 2 == 1:
			qq += str(get_collision_layer_bit(Autoload.get_int()))
		if randi() % 2 == 1:
			qq += str(get_collision_mask_bit(Autoload.get_int()))
		if randi() % 2 == 1:
			qq += str(get_meshes())
		if randi() % 2 == 1:
			qq += str(get_used_cells())
			
		if randi() % 2 == 1:
			make_baked_meshes(Autoload.get_bool(), Autoload.get_float())
		if randi() % 2 == 1:
			qq += str(map_to_world(Autoload.get_int(),Autoload.get_int(),Autoload.get_int()))
			resource_changed(CubeMesh.new())
			
		if randi() % 2 == 1:
			set_cell_item(Autoload.get_int(),Autoload.get_int(),Autoload.get_int(),Autoload.get_int(),Autoload.get_int())
		if randi() % 2 == 1:
			set_clip(Autoload.get_bool(),Autoload.get_bool(),Autoload.get_int(), Autoload.get_int())
		if randi() % 2 == 1:
			set_collision_layer_bit(Autoload.get_int(),Autoload.get_bool())
		if randi() % 2 == 1:
			set_collision_mask_bit(Autoload.get_int(),Autoload.get_bool())
			
		if randi() % 2 == 1:
			qq += str(world_to_map(Autoload.get_vector3()))
