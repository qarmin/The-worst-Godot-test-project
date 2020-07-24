extends Node2D

var q_MeshLibrary: MeshLibrary = MeshLibrary.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_MeshLibrary, true)


func nodeFunction(q_MeshLibrary: MeshLibrary, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_MeshLibrary = MeshLibrary.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_MeshLibrary)

	### START TEMP
	var temp_ImageTexture: ImageTexture = ImageTexture.new()
	AutoResourcesImageTexture.nodeFunction(temp_ImageTexture)

	var temp_CubeMesh: CubeMesh = CubeMesh.new()
	AutoResourcesCubeMesh.nodeFunction(temp_CubeMesh)

	var temp_NavigationMesh: NavigationMesh = NavigationMesh.new()
	AutoResourcesNavigationMesh.nodeFunction(temp_NavigationMesh)

	### END TEMP

	if randi() % 2 == 1:
		q_MeshLibrary.clear()
	if randi() % 2 == 1:
		q_MeshLibrary.create_item(Autoload.get_int())
	if randi() % 2 == 1:
		q_MeshLibrary.find_item_by_name(Autoload.get_string())

	if randi() % 2 == 1:
		q_MeshLibrary.get_item_list()
	if randi() % 2 == 1:
		q_MeshLibrary.get_item_mesh(Autoload.get_int())
	if randi() % 2 == 1:
		q_MeshLibrary.get_item_name(Autoload.get_int())
	if randi() % 2 == 1:
		q_MeshLibrary.get_item_navmesh(Autoload.get_int())
	if randi() % 2 == 1:
		q_MeshLibrary.get_item_navmesh_transform(Autoload.get_int())
	if randi() % 2 == 1:
		q_MeshLibrary.get_item_preview(Autoload.get_int())
	if randi() % 2 == 1:
		q_MeshLibrary.get_item_shapes(Autoload.get_int())
	if randi() % 2 == 1:
		q_MeshLibrary.get_last_unused_item_id()

	if randi() % 2 == 1:
		q_MeshLibrary.remove_item(Autoload.get_int())

	if randi() % 2 == 1:
		q_MeshLibrary.set_item_mesh(Autoload.get_int(), temp_CubeMesh)
	if randi() % 2 == 1:
		q_MeshLibrary.set_item_name(Autoload.get_int(), Autoload.get_string())
	if randi() % 2 == 1:
		q_MeshLibrary.set_item_navmesh(Autoload.get_int(), temp_NavigationMesh)
	if randi() % 2 == 1:
		q_MeshLibrary.set_item_navmesh_transform(Autoload.get_int(), Autoload.get_transform())
	if randi() % 2 == 1:
		q_MeshLibrary.set_item_preview(Autoload.get_int(), temp_ImageTexture)
	if randi() % 2 == 1:
		q_MeshLibrary.set_item_shapes(Autoload.get_int(), Autoload.get_array())
