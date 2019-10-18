extends RootMotionView

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_Spatial(self)
		AutoObjects.A_VisualInstance(self)
		nodeFunction(self)

func nodeFunction(q_RootMotionView : RootMotionView) -> void:

	if randi() % 2 == 1:
		q_RootMotionView.set_animation_path(Autoload.get_string())
	if randi() % 2 == 1:
		q_RootMotionView.set_color(Autoload.get_color())
	if randi() % 2 == 1:
		q_RootMotionView.set_cell_size(Autoload.get_float())
	if randi() % 2 == 1:
		q_RootMotionView.set_radius(Autoload.get_float())
	if randi() % 2 == 1:
		q_RootMotionView.set_zero_y(Autoload.get_bool())
