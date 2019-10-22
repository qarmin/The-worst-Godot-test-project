extends MultiMeshInstance2D

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self)

func nodeFunction(q_MultiMeshInstance2D : MultiMeshInstance2D, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_MultiMeshInstance2D)
		AutoObjects.A_Node(q_MultiMeshInstance2D)
		AutoObjects.A_CanvasItem(q_MultiMeshInstance2D)
		AutoObjects.A_Node2D(q_MultiMeshInstance2D)
		
#	BUG	if randi() % 2 == 1:
#			q_MultiMeshInstance2D.set_multimesh(Autoload.loadA("Multimesh.tres"))
	if randi() % 2 == 1:
		q_MultiMeshInstance2D.set_texture(Autoload.loadA("Sprite.png"))
	if randi() % 2 == 1:
		q_MultiMeshInstance2D.set_normal_map(Autoload.loadA("Sprite.png"))
