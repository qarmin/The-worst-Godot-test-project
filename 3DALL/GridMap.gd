extends GridMap

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_GridMap: GridMap, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_GridMap)
		AutoObjects.A_Node(q_GridMap)
		AutoObjects.A_Node3D(q_GridMap)

	### START TEMP
	var temp_MeshLibrary: MeshLibrary = MeshLibrary.new()
#?#	AutoResourcesMeshLibrary.nodeFunction(temp_MeshLibrary)

	var temp_BoxMesh: BoxMesh = BoxMesh.new()
#?#	AutoResourcesCubeMesh.nodeFunction(temp_BoxMesh)

### END TEMP

#	if randi() % 2 == 1: #LEAK
#		q_GridMap.set_theme(temp_MeshLibrary)
#	if randi() % 2 == 1:
#		q_GridMap.set_mesh_library(temp_MeshLibrary)
#	if randi() % 2 == 1:
#		q_GridMap.set_cell_size(Autoload.get_vector3())
#	if randi() % 2 == 1:
#		q_GridMap.set_octant_size(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_GridMap.set_center_x(Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_GridMap.set_center_y(Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_GridMap.set_center_z(Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_GridMap.set_cell_scale(Autoload.get_float())
#	if randi() % 2 == 1:
#		q_GridMap.set_collision_layer(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_GridMap.set_collision_mask(Autoload.get_int())
#
#	if randi() % 2 == 1:
#		q_GridMap.clear()
#	if randi() % 2 == 1:
#		q_GridMap.clear_baked_meshes()
#
#	if randi() % 2 == 1:
#		q_GridMap.get_bake_mesh_instance(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_GridMap.get_bake_meshes()
#	if randi() % 2 == 1:
#		q_GridMap.get_cell_item(Autoload.get_int(),Autoload.get_int(),Autoload.get_int())
#	if randi() % 2 == 1:
#		q_GridMap.get_cell_item_orientation(Autoload.get_int(),Autoload.get_int(),Autoload.get_int())
#	if randi() % 2 == 1:
#		q_GridMap.get_collision_layer_bit(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_GridMap.get_collision_mask_bit(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_GridMap.get_meshes()
#	if randi() % 2 == 1:
#		q_GridMap.get_used_cells()
#
#	if randi() % 2 == 1:
#		q_GridMap.make_baked_meshes(Autoload.get_bool(), Autoload.get_float())
#	if randi() % 2 == 1:
#		q_GridMap.map_to_world(Autoload.get_int(),Autoload.get_int(),Autoload.get_int())
#	if randi() % 2 == 1:
#		q_GridMap.resource_changed(temp_BoxMesh)
#
#	if randi() % 2 == 1:
#		q_GridMap.set_cell_item(Autoload.get_int(),Autoload.get_int(),Autoload.get_int(),Autoload.get_int(),Autoload.get_int())
#	if randi() % 2 == 1:
#		q_GridMap.set_clip(Autoload.get_bool(),Autoload.get_bool(),Autoload.get_int(), Autoload.get_int())
#	if randi() % 2 == 1:
#		q_GridMap.set_collision_layer_bit(Autoload.get_int(),Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_GridMap.set_collision_mask_bit(Autoload.get_int(),Autoload.get_bool())
#
#	if randi() % 2 == 1:
#		q_GridMap.world_to_map(Autoload.get_vector3())
