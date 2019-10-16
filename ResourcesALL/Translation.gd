extends Node2D

var q_Translation : Translation = Translation.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_Translation = Translation.new()

		if randi() % 2 == 1:
			q_Translation.set_locale(Autoload.get_string())

		if randi() % 2 == 1:
			q_Translation.add_message( Autoload.get_string(), Autoload.get_string() )
		if randi() % 2 == 1:
			q_Translation.erase_message( Autoload.get_string() )
		if randi() % 2 == 1:
			Autoload.qq = str(q_Translation.get_message( Autoload.get_string() ))
		if randi() % 2 == 1:
			Autoload.qq = str(q_Translation.get_message_count())
		if randi() % 2 == 1:
			Autoload.qq = str(q_Translation.get_message_list())
