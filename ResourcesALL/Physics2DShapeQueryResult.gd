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
#		if !Autoload.RANDI:
#			pass
#
#		var q_Physics2DShapeQueryResult : Physics2DShapeQueryResult = Physics2DShapeQueryResult.new()
#
#		q_Physics2DShapeQueryResult.get_result_count()
#		q_Physics2DShapeQueryResult.get_result_object( Autoload.get_int() )
#		q_Physics2DShapeQueryResult.get_result_object_id( Autoload.get_int() )
#		q_Physics2DShapeQueryResult.get_result_object_shape( Autoload.get_int() )
#		q_Physics2DShapeQueryResult.get_result_rid( Autoload.get_int() )
#
#		if Autoload.WRONG_BUGS:
#			pass
