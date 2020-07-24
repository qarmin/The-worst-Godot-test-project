extends MeshInstance2D

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_MeshInstance2D: MeshInstance2D, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_MeshInstance2D)
		AutoObjects.A_Node(q_MeshInstance2D)
		AutoObjects.A_CanvasItem(q_MeshInstance2D)
		AutoObjects.A_Node2D(q_MeshInstance2D)

	### START TEMP
	var temp_ImageTexture: ImageTexture = ImageTexture.new()
#?#	AutoResourcesImageTexture.nodeFunction(temp_ImageTexture)

#	var temp_Mesh : Mesh = Mesh.new() #TODO
#?#	AutoResourcesMesh.nodeFunction(temp_Mesh)

	### END TEMP

#	if randi() % 2 == 1: #TODO
#		q_MeshInstance2D.set_mesh(temp_Mesh)
	if randi() % 2 == 1:
		q_MeshInstance2D.set_texture(temp_ImageTexture)
	if randi() % 2 == 1:
		q_MeshInstance2D.set_normal_map(temp_ImageTexture)
