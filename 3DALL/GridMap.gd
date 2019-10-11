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
			set_cell_size(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			set_octant_size(Autoload.get_randi())
		if randi() % 2 == 1:
			set_center_x(bool(randi()%2))
		if randi() % 2 == 1:
			set_center_y(bool(randi()%2))
		if randi() % 2 == 1:
			set_center_z(bool(randi()%2))
		if randi() % 2 == 1:
			set_cell_scale(Autoload.get_randf())
		if randi() % 2 == 1:
			set_collision_layer(Autoload.get_randi())
		if randi() % 2 == 1:
			set_collision_mask(Autoload.get_randi())
			
		if randi() % 2 == 1:
			clear()
		if randi() % 2 == 1:
			clear_baked_meshes()
			
		if randi() % 2 == 1:
			qq += str(get_bake_mesh_instance(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(get_bake_meshes())
		if randi() % 2 == 1:
			qq += str(get_cell_item(Autoload.get_randi(),Autoload.get_randi(),Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(get_cell_item_orientation(Autoload.get_randi(),Autoload.get_randi(),Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(get_collision_layer_bit(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(get_collision_mask_bit(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(get_meshes())
		if randi() % 2 == 1:
			qq += str(get_used_cells())
			
		if randi() % 2 == 1:
			make_baked_meshes(bool(randi()%2), Autoload.get_randf())
		if randi() % 2 == 1:
			qq += str(map_to_world(Autoload.get_randi(),Autoload.get_randi(),Autoload.get_randi()))
			resource_changed(CubeMesh.new())
			
		if randi() % 2 == 1:
			set_cell_item(Autoload.get_randi(),Autoload.get_randi(),Autoload.get_randi(),Autoload.get_randi(),Autoload.get_randi())
		if randi() % 2 == 1:
			set_clip(bool(randi()%2),bool(randi()%2),Autoload.get_randi(), Autoload.get_randi())
		if randi() % 2 == 1:
			set_collision_layer_bit(Autoload.get_randi(),bool(randi()%2))
		if randi() % 2 == 1:
			set_collision_mask_bit(Autoload.get_randi(),bool(randi()%2))
			
		if randi() % 2 == 1:
			qq += str(world_to_map(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf())))
