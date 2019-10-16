extends SpringArm

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_collision_mask(Autoload.get_int())
		if randi() % 2 == 1:
			set_shape(BoxShape.new())
		if randi() % 2 == 1:
			set_length(Autoload.get_float())
		if randi() % 2 == 1:
			set_margin(Autoload.get_float())

		if randi() % 2 == 1:
			add_excluded_object(RID())
		if randi() % 2 == 1:
			clear_excluded_objects()
		if randi() % 2 == 1:
			Autoload.qq = str(get_hit_length())
		if randi() % 2 == 1:
			Autoload.qq = str(remove_excluded_object(RID()))
