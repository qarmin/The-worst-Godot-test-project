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
#		var q_PhysicsDirectSpaceState : PhysicsDirectSpaceState = PhysicsDirectSpaceState.new()
#
#		q_PhysicsDirectSpaceState.cast_motion( PhysicsShapeQueryParameters.new(), Autoload.get_vector3())
#		q_PhysicsDirectSpaceState.collide_shape( PhysicsShapeQueryParameters.new(),Autoload.get_int())
#		q_PhysicsDirectSpaceState.get_rest_info( PhysicsShapeQueryParameters.new())
#
#		q_PhysicsDirectSpaceState.intersect_ray( Autoload.get_vector3(), Autoload.get_vector3(),[124,214,214,124,214,214,2], Autoload.get_bool(), Autoload.get_bool(), Autoload.get_bool())
#		q_PhysicsDirectSpaceState.intersect_shape( PhysicsShapeQueryParameters.new(), Autoload.get_int())
#
