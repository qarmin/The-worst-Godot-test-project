extends Line2D

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_Line2D : Line2D, can_reset : bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_Line2D)
		AutoObjects.A_Node(q_Line2D)
		AutoObjects.A_CanvasItem(q_Line2D)
		AutoObjects.A_Node2D(q_Line2D)

	### START TEMP
	var temp_Gradient : Gradient = Gradient.new()
#?#	AutoResourcesGradient.nodeFunction(temp_Gradient)

	var temp_ImageTexture : ImageTexture = ImageTexture.new()
#?#	AutoResourcesImageTexture.nodeFunction(temp_ImageTexture)

	var temp_Curve : Curve = Curve.new()
#?#	AutoResourcesCurve.nodeFunction(temp_Curve)
	### END TEMP


	if randi() % 2 == 1:
		q_Line2D.set_points(Autoload.get_packedvector2array())
	if randi() % 2 == 1:
		q_Line2D.set_width(Autoload.get_float())
	if randi() % 2 == 1:
		q_Line2D.set_curve(temp_Curve)
	if randi() % 2 == 1:
		q_Line2D.set_default_color(Autoload.get_color())
	if randi() % 2 == 1:
		q_Line2D.set_gradient(temp_Gradient)
	if randi() % 2 == 1:
		q_Line2D.set_texture(temp_ImageTexture)
	if randi() % 2 == 1:
		q_Line2D.set_texture_mode(Autoload.get_int()) #LineTextureMode
	if randi() % 2 == 1:
		q_Line2D.set_joint_mode(Autoload.get_int()) #LineJointMode
	if randi() % 2 == 1:
		q_Line2D.set_begin_cap_mode(Autoload.get_int()) #LineCapMode
	if randi() % 2 == 1:
		q_Line2D.set_end_cap_mode(Autoload.get_int()) #LineCapMode
	if randi() % 2 == 1:
		q_Line2D.set_sharp_limit(Autoload.get_float())
	if randi() % 2 == 1:
		q_Line2D.set_round_precision(Autoload.get_int())

	if randi() % 2 == 1:
		q_Line2D.add_point(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Line2D.clear_points()

	if randi() % 2 == 1:
		q_Line2D.get_point_count()
	if randi() % 2 == 1:
		q_Line2D.get_point_position(Autoload.get_int())

	if randi() % 2 == 1:
		q_Line2D.remove_point(Autoload.get_int())
#	if randi() % 2 == 1: #BUG CRASH
#		q_Line2D.set_point_position(Autoload.get_int(), Autoload.get_vector2())
