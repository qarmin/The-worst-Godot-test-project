extends CanvasLayer

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		nodeFunction(self)

func nodeFunction(q_CanvasLayer : CanvasLayer) -> void:

		if randi() % 2 == 1:
			q_CanvasLayer.set_layer(Autoload.get_int())
		if randi() % 2 == 1:
			q_CanvasLayer.set_offset(Autoload.get_vector2())
		if randi() % 2 == 1:
			q_CanvasLayer.set_rotation_degrees(Autoload.get_float())
		if randi() % 2 == 1:
			q_CanvasLayer.set_rotation(Autoload.get_float())
		if randi() % 2 == 1:
			q_CanvasLayer.set_scale(Autoload.get_vector2())
		if randi() % 2 == 1:
			q_CanvasLayer.set_transform(Autoload.get_transform2d())
		if randi() % 2 == 1:
			q_CanvasLayer.set_custom_viewport(get_parent())
		if randi() % 2 == 1:
			q_CanvasLayer.set_follow_viewport(Autoload.get_bool())
		if randi() % 2 == 1:
			q_CanvasLayer.set_follow_viewport_scale(Autoload.get_float())

		if randi() % 2 == 1:
			q_CanvasLayer.get_canvas()
