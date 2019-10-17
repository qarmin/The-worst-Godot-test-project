extends Light2D

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_CanvasItem(self)
		AutoObjects.A_Node2D(self)
		nodeFunction(self)

func nodeFunction(q_Light2D : Light2D) -> void:

	if randi() % 2 == 1:
		q_Light2D.set_enabled(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Light2D.set_editor_only(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Light2D.set_texture(Autoload.loadA("Sprite.png"))
	if randi() % 2 == 1:
		q_Light2D.set_texture_offset(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Light2D.set_texture_scale(Autoload.get_float())
	if randi() % 2 == 1:
		q_Light2D.set_color(Autoload.get_color())
	if randi() % 2 == 1:
		q_Light2D.set_energy(Autoload.get_float())
	if randi() % 2 == 1:
		q_Light2D.set_mode(Autoload.get_int())
	if randi() % 2 == 1:
		q_Light2D.set_height(Autoload.get_float())
	if randi() % 2 == 1:
		q_Light2D.set_z_range_min(Autoload.get_int())
	if randi() % 2 == 1:
		q_Light2D.set_z_range_max(Autoload.get_int())
	if randi() % 2 == 1:
		q_Light2D.set_layer_range_min(Autoload.get_int())
	if randi() % 2 == 1:
		q_Light2D.set_layer_range_max(Autoload.get_int())
	if randi() % 2 == 1:
		q_Light2D.set_item_cull_mask(Autoload.get_int())
	if randi() % 2 == 1:
		q_Light2D.set_shadow_enabled(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Light2D.set_shadow_color(Autoload.get_color())
	if randi() % 2 == 1:
		q_Light2D.set_shadow_buffer_size(Autoload.get_int())
	if randi() % 2 == 1:
		q_Light2D.set_shadow_smooth(Autoload.get_int())
	if randi() % 2 == 1:
		q_Light2D.set_item_shadow_cull_mask(Autoload.get_int())
