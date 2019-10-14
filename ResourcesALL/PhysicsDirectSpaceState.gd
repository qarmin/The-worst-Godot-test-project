extends Node2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

#func _ready():
#	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#
#func _process(delta) -> void:
#	counter -= delta
#	var qq : String = ""
#	qq = qq
#
#	if counter <= 0:
#		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#
#		var q_PhysicsDirectSpaceState : PhysicsDirectSpaceState = PhysicsDirectSpaceState.new()
#
#		q_PhysicsDirectSpaceState.cast_motion( PhysicsShapeQueryParameters.new(), Autoload.get_vector3() )
#		q_PhysicsDirectSpaceState.collide_shape( PhysicsShapeQueryParameters.new(),Autoload.get_int())
#		q_PhysicsDirectSpaceState.get_rest_info( PhysicsShapeQueryParameters.new() )
#
#		q_PhysicsDirectSpaceState.intersect_ray( Autoload.get_vector3(), Autoload.get_vector3(),[124,214,214,124,214,214,2], Autoload.get_bool(), Autoload.get_bool(), Autoload.get_bool() )
#		q_PhysicsDirectSpaceState.intersect_shape( PhysicsShapeQueryParameters.new(), Autoload.get_int())
#
