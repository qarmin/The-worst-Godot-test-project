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
#		var q_Physics2DDirectSpaceState : Physics2DDirectSpaceState = Physics2DDirectSpaceState.new()
#
#		qq += str(q_Physics2DDirectSpaceState.cast_motion( Physics2DShapeQueryParameters.new() ))
#		qq += str(q_Physics2DDirectSpaceState.collide_shape( Physics2DShapeQueryParameters.new(), Autoload.get_int()))
#		qq += str(q_Physics2DDirectSpaceState.get_rest_info( Physics2DShapeQueryParameters.new() ))
#
#		qq += str(q_Physics2DDirectSpaceState.intersect_point( Autoload.get_vector2(), Autoload.get_int(), [124,214,214,124,214,214,2], Autoload.get_int(), Autoload.get_bool(), Autoload.get_bool() ))
#		qq += str(q_Physics2DDirectSpaceState.intersect_point_on_canvas( Autoload.get_vector2(), Autoload.get_int(), Autoload.get_int(), [124,214,214,124,214,214,2], Autoload.get_int(), Autoload.get_bool(), Autoload.get_bool() ))
#		qq += str(q_Physics2DDirectSpaceState.intersect_ray( Autoload.get_vector2(), Autoload.get_vector2(), [124,214,214,124,214,214,2], Autoload.get_int(), Autoload.get_bool(), Autoload.get_bool() ))
#		qq += str(q_Physics2DDirectSpaceState.intersect_shape( Physics2DShapeQueryParameters.new(), Autoload.get_int()))
#
