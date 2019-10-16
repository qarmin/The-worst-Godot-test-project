extends SpotLight

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set("spot_range",Autoload.get_float())
		if randi() % 2 == 1:
			set("spot_attenuation",Autoload.get_float())
		if randi() % 2 == 1:
			set("spot_angle",Autoload.get_float())
		if randi() % 2 == 1:
			set("spot_angle_attenuation",Autoload.get_float())
