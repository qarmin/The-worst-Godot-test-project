extends Node2D

onready var counter : float = Autoload.get_rand_time()

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
#		var q_InputEventWithModifiers : InputEventWithModifiers = InputEventWithModifiers.new()
#
#		q_InputEventWithModifiers.set_alt(Autoload.get_bool())
#		q_InputEventWithModifiers.set_shift(Autoload.get_bool())
#		q_InputEventWithModifiers.set_control(Autoload.get_bool())
#		q_InputEventWithModifiers.set_metakey(Autoload.get_bool())
#		q_InputEventWithModifiers.set_command(Autoload.get_bool())
#
