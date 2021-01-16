extends Node2D

var q_CharFXTransform: CharFXTransform = CharFXTransform.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_CharFXTransform, true)


func nodeFunction(q_CharFXTransform: CharFXTransform, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_CharFXTransform = CharFXTransform.new()
	if randi() % 2 == 1:
		AutoResourcesReference.nodeFunction(q_CharFXTransform)

#	if randi() % 2 == 1:
#		q_CharFXTransform.set_relative_index(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_CharFXTransform.set_absolute_index(Autoload.get_int())
	if randi() % 2 == 1:
		q_CharFXTransform.set_elapsed_time(Autoload.get_float())
	if randi() % 2 == 1:
		q_CharFXTransform.set_visibility(Autoload.get_bool())
	if randi() % 2 == 1:
		q_CharFXTransform.set_offset(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_CharFXTransform.set_color(Autoload.get_color())
	if randi() % 2 == 1:
		q_CharFXTransform.set_environment(Autoload.get_dictionary())
#	if randi() % 2 == 1:
#		q_CharFXTransform.set_character(Autoload.get_int())
