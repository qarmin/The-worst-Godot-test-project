extends Line2D

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

func nodeFunction(q_Line2D : Line2D) -> void:
	pass
#BUG
#	if randi() % 2 == 1:
#		q_Line2D.clear_points()
#	if randi() % 2 == 1:
#		q_Line2D.set_points(Autoload.get_poolvector2array())
#	if randi() % 2 == 1:
#		q_Line2D.set_width(Autoload.get_float())
#	if randi() % 2 == 1:
#		q_Line2D.set_default_color(Autoload.get_color())
#	if randi() % 2 == 1:
#		q_Line2D.set_gradient(Autoload.loadA("Gradient.tres"))
#	if randi() % 2 == 1:
#		q_Line2D.set_texture(Autoload.loadA("Sprite.png"))
#	if randi() % 2 == 1:
#		q_Line2D.set_texture_mode(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_Line2D.set_joint_mode(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_Line2D.set_begin_cap_mode(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_Line2D.set_end_cap_mode(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_Line2D.set_sharp_limit(Autoload.get_float())
#	if randi() % 2 == 1:
#		q_Line2D.set_round_precision(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_Line2D.add_point(Autoload.get_vector2())
#	if randi() % 2 == 1:
#		q_Line2D.get_point_count()
#	if randi() % 2 == 1:
#		q_Line2D.get_point_position(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_Line2D.remove_point(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_Line2D.set_point_position(Autoload.get_int(), Autoload.get_vector2())
