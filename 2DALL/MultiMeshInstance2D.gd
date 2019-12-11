extends MultiMeshInstance2D

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_MultiMeshInstance2D : MultiMeshInstance2D, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_MultiMeshInstance2D)
		AutoObjects.A_Node(q_MultiMeshInstance2D)
		AutoObjects.A_CanvasItem(q_MultiMeshInstance2D)
		AutoObjects.A_Node2D(q_MultiMeshInstance2D)
		
	### START TEMP
	var temp_ImageTexture : ImageTexture = ImageTexture.new()
#?#	AutoResourcesImageTexture.nodeFunction(temp_ImageTexture)
	
	var temp_MultiMesh : MultiMesh = MultiMesh.new()
#?#	AutoResourcesMultiMesh.nodeFunction(temp_MultiMesh)
	### END TEMP
	
		
	if randi() % 2 == 1:
		q_MultiMeshInstance2D.set_multimesh(temp_MultiMesh)
	if randi() % 2 == 1:
		q_MultiMeshInstance2D.set_texture(temp_ImageTexture)
	if randi() % 2 == 1:
		q_MultiMeshInstance2D.set_normal_map(temp_ImageTexture)
