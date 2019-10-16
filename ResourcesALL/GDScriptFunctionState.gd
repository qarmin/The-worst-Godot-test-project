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
#		var q_GDScriptFunctionState : GDScriptFunctionState = GDScriptFunctionState.new()
#
#		Autoload.qq = str(q_GDScriptFunctionState.is_valid( Autoload.get_bool()))
#		q_GDScriptFunctionState.resume( String())
#
