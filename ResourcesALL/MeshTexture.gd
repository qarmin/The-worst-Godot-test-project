extends Node2D

var q_MeshTexture: MeshTexture = MeshTexture.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_MeshTexture, true)


func nodeFunction(q_MeshTexture: MeshTexture, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_MeshTexture = MeshTexture.new()
#	if randi() % 2 == 1:#MISSING
#		AutoResourcesTexture.nodeFunction(q_MeshTexture)

	### START TEMP
	var temp_ImageTexture: ImageTexture = ImageTexture.new()
	AutoResourcesImageTexture.nodeFunction(temp_ImageTexture)

#	var temp_Mesh : Mesh = Mesh.new() #TODO Mesh is not instantable
#	AutoResourcesMesh.nodeFunction(temp_Mesh)

	### END TEMP

#	if randi() % 2 == 1:
#		q_MeshTexture.set_mesh(temp_Mesh)
	if randi() % 2 == 1:
		q_MeshTexture.set_base_texture(temp_ImageTexture)
	if randi() % 2 == 1:
		q_MeshTexture.set_image_size(Autoload.get_vector2())
