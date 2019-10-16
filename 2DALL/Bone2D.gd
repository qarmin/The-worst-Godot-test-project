extends Bone2D

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

func nodeFunction(q_Bone2D : Bone2D) -> void:

	if randi() % 2 == 1:
		q_Bone2D.apply_rest()
	if randi() % 2 == 1:
		q_Bone2D.get_index_in_skeleton()
	if randi() % 2 == 1:
		q_Bone2D.get_skeleton_rest()
