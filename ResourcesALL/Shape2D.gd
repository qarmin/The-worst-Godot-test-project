extends Node2D

var q_Shape2D: Shape2D = CapsuleShape2D.new()

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_Shape2D, true)


func nodeFunction(q_Shape2D: Shape2D, can_reset: bool = false) -> void:
#	if can_reset:
#		if randi() % 2 == 1:
#			q_Shape2D = Shape2D.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_Shape2D)

	### START TEMP
	var temp_CircleShape2D: CircleShape2D = CircleShape2D.new()
	AutoResourcesCircleShape2D.nodeFunction(temp_CircleShape2D)

	### END TEMP

	if randi() % 2 == 1:
		q_Shape2D.set_custom_solver_bias(Autoload.get_float())

	if randi() % 2 == 1:
		q_Shape2D.collide(Autoload.get_transform2d(), temp_CircleShape2D, Autoload.get_transform2d())
	if randi() % 2 == 1:
		q_Shape2D.collide_and_get_contacts(Autoload.get_transform2d(), temp_CircleShape2D, Autoload.get_transform2d())
#	if randi() % 2 == 1: #BUG
#		q_Shape2D.collide_with_motion( Autoload.get_transform2d(), Autoload.get_vector2(), temp_CircleShape2D, Autoload.get_transform2d(), Autoload.get_vector2())
#	if randi() % 2 == 1:
#		q_Shape2D.collide_with_motion_and_get_contacts( Autoload.get_transform2d(),Autoload.get_vector2(), temp_CircleShape2D, Autoload.get_transform2d(), Autoload.get_vector2())
