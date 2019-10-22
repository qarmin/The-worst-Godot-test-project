extends Sprite

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self)

func nodeFunction(q_Sprite : Sprite, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_Sprite)
		AutoObjects.A_Node(q_Sprite)
		AutoObjects.A_CanvasItem(q_Sprite)
		AutoObjects.A_Node2D(q_Sprite)
		
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
