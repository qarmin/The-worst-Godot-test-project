extends Skeleton2D

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_Skeleton2D : Skeleton2D, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_Skeleton2D)
		AutoObjects.A_Node(q_Skeleton2D)
		AutoObjects.A_CanvasItem(q_Skeleton2D)
		AutoObjects.A_Node2D(q_Skeleton2D)
		
	if randi() % 2 == 1:
		q_Skeleton2D.get_bone(Autoload.get_int())
	if randi() % 2 == 1:
		q_Skeleton2D.get_bone_count()
	if randi() % 2 == 1:
		q_Skeleton2D.get_skeleton()
