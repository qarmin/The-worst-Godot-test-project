extends BackBufferCopy

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self)

func nodeFunction(q_BackBufferCopy : BackBufferCopy, can_reset : bool = false):

	AutoObjects.A_Object(self)
	AutoObjects.A_Node(self)
	AutoObjects.A_CanvasItem(self)
	AutoObjects.A_Node2D(self)
		
	if randi() % 2 == 1:
		q_BackBufferCopy.set_copy_mode(Autoload.get_int())
	if randi() % 2 == 1:
		q_BackBufferCopy.set_rect(Autoload.get_rect2())
