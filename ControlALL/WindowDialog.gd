extends WindowDialog

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_title(Autoload.get_string())
		if randi() % 2 == 1:
			set_resizable(Autoload.get_bool())
		if randi() % 2 == 1:
			Autoload.qq = str(get_close_button())
