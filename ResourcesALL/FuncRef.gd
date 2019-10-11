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
#		var q_FuncRef : FuncRef = FuncRef.new()
#
#		q_FuncRef.call_func(Autoload.get_string())
#		q_FuncRef.is_valid()
#
#		q_FuncRef.set_function( Autoload.get_string() )
#		q_FuncRef.set_instance( Node.new() )
#
