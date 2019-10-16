extends HSplitContainer

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_split_offset(Autoload.get_int())
		if randi() % 2 == 1:
			set_collapsed(Autoload.get_bool())
		if randi() % 2 == 1:
			set_dragger_visibility(Autoload.get_int())# draggervisibility
		if randi() % 2 == 1:
			clamp_split_offset()
