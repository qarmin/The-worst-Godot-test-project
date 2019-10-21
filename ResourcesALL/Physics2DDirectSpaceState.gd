extends Node2D

onready var counter : float = Autoload.get_rand_time()

#
#
#
#func alt_process(delta) -> void:
#	counter -= delta
#
#
#
#	if counter <= 0:
#		counter = Autoload.get_rand_time()
#
#
#		var q_Physics2DDirectSpaceState : Physics2DDirectSpaceState = Physics2DDirectSpaceState.new()
#
#		q_Physics2DDirectSpaceState.cast_motion( Physics2DShapeQueryParameters.new()))
#		q_Physics2DDirectSpaceState.collide_shape( Physics2DShapeQueryParameters.new(), Autoload.get_int()))
#		q_Physics2DDirectSpaceState.get_rest_info( Physics2DShapeQueryParameters.new()))
#
#		q_Physics2DDirectSpaceState.intersect_point( Autoload.get_vector2(), Autoload.get_int(), [124,214,214,124,214,214,2], Autoload.get_int(), Autoload.get_bool(), Autoload.get_bool()))
#		q_Physics2DDirectSpaceState.intersect_point_on_canvas( Autoload.get_vector2(), Autoload.get_int(), Autoload.get_int(), [124,214,214,124,214,214,2], Autoload.get_int(), Autoload.get_bool(), Autoload.get_bool()))
#		q_Physics2DDirectSpaceState.intersect_ray( Autoload.get_vector2(), Autoload.get_vector2(), [124,214,214,124,214,214,2], Autoload.get_int(), Autoload.get_bool(), Autoload.get_bool()))
#		q_Physics2DDirectSpaceState.intersect_shape( Physics2DShapeQueryParameters.new(), Autoload.get_int()))
#
