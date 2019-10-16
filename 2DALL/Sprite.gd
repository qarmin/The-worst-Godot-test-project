extends Sprite

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_CanvasItem(self)
		AutoObjects.A_Node2D(self)
		nodeFunction(self)

func nodeFunction(q_Sprite : Sprite) -> void:

		if randi() % 2 == 1:
			q_Sprite.set_texture(Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			q_Sprite.set_normal_map(Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			q_Sprite.set_centered(Autoload.get_bool())
		if randi() % 2 == 1:
			q_Sprite.set_offset(Autoload.get_vector2())
		if randi() % 2 == 1:
			q_Sprite.set_flip_h(Autoload.get_bool())
		if randi() % 2 == 1:
			q_Sprite.set_flip_v(Autoload.get_bool())
		if randi() % 2 == 1:
			q_Sprite.set_vframes(Autoload.get_int())
		if randi() % 2 == 1:
			q_Sprite.set_hframes(Autoload.get_int())
		if randi() % 2 == 1:
			q_Sprite.set_frame(Autoload.get_int())
		if randi() % 2 == 1:
			q_Sprite.set_region(Autoload.get_bool())
		if randi() % 2 == 1:
			q_Sprite.set_region_rect(Autoload.get_rect2())
		if randi() % 2 == 1:
			q_Sprite.set_region_filter_clip(Autoload.get_bool())
		if randi() % 2 == 1:
			q_Sprite.get_rect()
		if randi() % 2 == 1:
			q_Sprite.is_pixel_opaque(Autoload.get_vector2())
