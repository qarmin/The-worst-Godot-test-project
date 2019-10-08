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
		if !Autoload.RANDI:
			
			#set_theme(MeshLibrary.new())
			set_mesh_library(MeshLibrary.new())
			set_cell_size(Vector3(randf() * 50 + 1,randf() * 50 + 1,randf() * 50 + 1))
			set_octant_size(randi()%50 + 1)
			set_center_x(bool(randi()%2))
			set_center_y(bool(randi()%2))
			set_center_z(bool(randi()%2))
			set_cell_scale(randf() * 50)
			set_collision_layer(randi()%50000)
			set_collision_mask(randi()%50000)
			
			clear()
			clear_baked_meshes()
			
			#qq += str(get_bake_mesh_instance(randi()%50))
			qq += str(get_bake_meshes())
			qq += str(get_cell_item(randi()%50,randi()%50,randi()%50))
			qq += str(get_cell_item_orientation(randi()%50,randi()%50,randi()%50))
			qq += str(get_collision_layer_bit(randi()%20))
			qq += str(get_collision_mask_bit(randi()%20))
			qq += str(get_meshes())
			qq += str(get_used_cells())
			
			make_baked_meshes(bool(randi()%2), randf() * 50)
			qq += str(map_to_world(randi()%50,randi()%50,randi()%50))
			resource_changed(CubeMesh.new())
			
			set_cell_item(randi()%50,randi()%50,randi()%50,randi()%50,randi()%50)
			for i in range(3):
				set_clip(bool(randi()%2),bool(randi()%2),randi()%50, i)
			set_collision_layer_bit(randi()%20,bool(randi()%2))
			set_collision_mask_bit(randi()%20,bool(randi()%2))
			
			qq += str(world_to_map(Vector3(randf() * 50,randf() * 50,randf() * 50)))
			
			
			if Autoload.WRONG_BUGS:
				set_theme(MeshLibrary.new())
				set_mesh_library(MeshLibrary.new())
				set_cell_size(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
				set_octant_size(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				set_center_x(bool(randi()%2))
				set_center_y(bool(randi()%2))
				set_center_z(bool(randi()%2))
				set_cell_scale(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_collision_layer(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				set_collision_mask(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				
				clear()
				clear_baked_meshes()
				
				qq += str(get_bake_mesh_instance(randi() % Autoload.RANGE - Autoload.RANGE / 2))
				qq += str(get_bake_meshes())
				qq += str(get_cell_item(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2))
				qq += str(get_cell_item_orientation(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2))
				qq += str(get_collision_layer_bit(randi() % Autoload.RANGE - Autoload.RANGE / 2))
				qq += str(get_collision_mask_bit(randi() % Autoload.RANGE - Autoload.RANGE / 2))
				qq += str(get_meshes())
				qq += str(get_used_cells())
				
				make_baked_meshes(bool(randi()%2), randf() * Autoload.RANGE - Autoload.RANGE / 2)
				qq += str(map_to_world(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2))
				resource_changed(CubeMesh.new())
				
				set_cell_item(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2)
				set_clip(bool(randi()%2),bool(randi()%2),randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2)
				set_collision_layer_bit(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
				set_collision_mask_bit(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
				
				qq += str(world_to_map(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
	
		else: #RANDI
			if randi() % 2 == 1:
				set_theme(MeshLibrary.new())
			if randi() % 2 == 1:
				set_mesh_library(MeshLibrary.new())
			if randi() % 2 == 1:
				set_cell_size(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				set_octant_size(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_center_x(bool(randi()%2))
			if randi() % 2 == 1:
				set_center_y(bool(randi()%2))
			if randi() % 2 == 1:
				set_center_z(bool(randi()%2))
			if randi() % 2 == 1:
				set_cell_scale(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_collision_layer(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_collision_mask(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				
			if randi() % 2 == 1:
				clear()
			if randi() % 2 == 1:
				clear_baked_meshes()
				
			if randi() % 2 == 1:
				qq += str(get_bake_mesh_instance(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				qq += str(get_bake_meshes())
			if randi() % 2 == 1:
				qq += str(get_cell_item(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				qq += str(get_cell_item_orientation(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				qq += str(get_collision_layer_bit(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				qq += str(get_collision_mask_bit(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				qq += str(get_meshes())
			if randi() % 2 == 1:
				qq += str(get_used_cells())
				
			if randi() % 2 == 1:
				make_baked_meshes(bool(randi()%2), randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				qq += str(map_to_world(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2))
				resource_changed(CubeMesh.new())
				
			if randi() % 2 == 1:
				set_cell_item(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_clip(bool(randi()%2),bool(randi()%2),randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_collision_layer_bit(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
			if randi() % 2 == 1:
				set_collision_mask_bit(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
				
			if randi() % 2 == 1:
				qq += str(world_to_map(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
