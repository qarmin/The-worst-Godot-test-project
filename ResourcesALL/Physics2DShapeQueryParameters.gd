extends Node2D

var q_Physics2DShapeQueryParameters : Physics2DShapeQueryParameters = Physics2DShapeQueryParameters.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_Physics2DShapeQueryParameters,true)

func nodeFunction(q_Physics2DShapeQueryParameters : Physics2DShapeQueryParameters, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_Physics2DShapeQueryParameters = Physics2DShapeQueryParameters.new()
	if randi() % 2 == 1:
		AutoResourcesReference.nodeFunction(q_Physics2DShapeQueryParameters)

	if randi() % 2 == 1:
		q_Physics2DShapeQueryParameters.set_collision_layer(Autoload.get_int())
	if randi() % 2 == 1:
		q_Physics2DShapeQueryParameters.set_exclude(Autoload.get_array())
	if randi() % 2 == 1:
		q_Physics2DShapeQueryParameters.set_margin(Autoload.get_float())
	if randi() % 2 == 1:
		q_Physics2DShapeQueryParameters.set_motion(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Physics2DShapeQueryParameters.set_shape_rid(RID())
	if randi() % 2 == 1:
		q_Physics2DShapeQueryParameters.set_transform(Autoload.get_transform2d())
	if randi() % 2 == 1:
		q_Physics2DShapeQueryParameters.set_collide_with_bodies(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Physics2DShapeQueryParameters.set_collide_with_areas(Autoload.get_bool())

	if randi() % 2 == 1:
		q_Physics2DShapeQueryParameters.set_shape(BoxShape.new())
