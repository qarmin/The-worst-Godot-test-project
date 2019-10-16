extends OmniLight

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set("omni_range",Autoload.get_float())
		if randi() % 2 == 1:
			set("omni_attenuation",Autoload.get_float())
		if randi() % 2 == 1:
			set_shadow_mode(Autoload.get_int()) # ShadowMode
		if randi() % 2 == 1:
			set_shadow_detail(Autoload.get_int()) # SkadowDetail
