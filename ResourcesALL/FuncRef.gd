extends Node2D

onready var counter : float = Autoload.get_rand_time()

#
#
#
#func _process(delta) -> void:
#	counter -= delta
#
#
#
#	if counter <= 0:
		counter = Autoload.get_rand_time()
#
#
#		var q_FuncRef : FuncRef = FuncRef.new()
#
#		q_FuncRef.call_func(Autoload.get_string())
#		q_FuncRef.is_valid()
#
#		q_FuncRef.set_function( Autoload.get_string() )
#		q_FuncRef.set_instance( Node.new() )
#
