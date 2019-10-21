extends Node2D

onready var counter : float = Autoload.get_rand_time()

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
#		var q_InputEventMouse : InputEventMouse = InputEventMouse.new()
#
#		q_InputEventMouse.set_button_mask(Autoload.get_int()) #ButtonList
#		q_InputEventMouse.set_position(Autoload.get_vector2())
#		q_InputEventMouse.set_global_position(Autoload.get_vector2())
#
