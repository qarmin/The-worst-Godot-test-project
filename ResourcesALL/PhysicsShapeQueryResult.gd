extends Node2D

onready var counter : float = Autoload.get_rand_time()

#
#
#
func alt_process(delta) -> void:
	pass
#	counter -= delta
#
#
#
#	if counter <= 0:
#		counter = Autoload.get_rand_time()
#
#
#		var q_PhysicsShapeQueryResult : PhysicsShapeQueryResult = PhysicsShapeQueryResult.new()
#
#		q_PhysicsShapeQueryResult.get_result_count()
#		q_PhysicsShapeQueryResult.get_result_object( Autoload.get_int())
#		q_PhysicsShapeQueryResult.get_result_object_id( Autoload.get_int()) 
#		q_PhysicsShapeQueryResult.get_result_object_shape( Autoload.get_int())
#		q_PhysicsShapeQueryResult.get_result_rid( Autoload.get_int())
#
