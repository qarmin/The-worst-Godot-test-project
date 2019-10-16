extends MeshInstance2D

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_CanvasItem(self)
		AutoObjects.A_Node2D(self)
		nodeFunction(self)

func nodeFunction(q_MeshInstance2D : MeshInstance2D) -> void:

	if randi() % 2 == 1:
		q_MeshInstance2D.set_texture(Autoload.loadA("Sprite.png"))
	if randi() % 2 == 1:
		q_MeshInstance2D.set_normal_map(Autoload.loadA("Sprite.png"))
