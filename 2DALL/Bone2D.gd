extends Bone2D

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_Bone2D : Bone2D, can_reset : bool = false) -> void:

	if randi()%2 == 1:
		AutoObjects.A_Object(q_Bone2D)
		AutoObjects.A_Node(q_Bone2D)
		AutoObjects.A_CanvasItem(q_Bone2D)
		AutoObjects.A_Node2D(q_Bone2D)
		
	if randi() % 2 == 1:
		q_Bone2D.set_rest(Autoload.get_transform2d())
	if randi() % 2 == 1:
		q_Bone2D.set_default_length(Autoload.get_float())

	if randi() % 2 == 1:
		q_Bone2D.apply_rest()

	if randi() % 2 == 1:
		q_Bone2D.get_index_in_skeleton()
	if randi() % 2 == 1:
		q_Bone2D.get_skeleton_rest()
