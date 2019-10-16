extends AcceptDialog

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_text(str(Autoload.get_int()))
		if randi() % 2 == 1:
			set_hide_on_ok(Autoload.get_bool())
			#LEAK Autoload.qq = str(add_button(Autoload.get_string(), Autoload.get_bool()))
			#LEAK Autoload.qq = str(add_cancel(Autoload.get_string()))
		if randi() % 2 == 1:
			Autoload.qq = str(get_label())
		if randi() % 2 == 1:
			Autoload.qq = str(get_ok())
		if randi() % 2 == 1:
			register_text_enter(self)
