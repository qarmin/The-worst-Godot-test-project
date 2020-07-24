extends BackBufferCopy

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_BackBufferCopy: BackBufferCopy, can_reset: bool = false):
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_BackBufferCopy)
		AutoObjects.A_Node(q_BackBufferCopy)
		AutoObjects.A_CanvasItem(q_BackBufferCopy)
		AutoObjects.A_Node2D(q_BackBufferCopy)

	if randi() % 2 == 1:
		q_BackBufferCopy.set_copy_mode(Autoload.get_int())  #CopyMode
	if randi() % 2 == 1:
		q_BackBufferCopy.set_rect(Autoload.get_rect2())
