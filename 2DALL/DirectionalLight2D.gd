extends DirectionalLight2D

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		#nodeFunction(self, true)


func nodeFunction(q_DirectionalLight2D: DirectionalLight2D, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_DirectionalLight2D)
		AutoObjects.A_Node(q_DirectionalLight2D)
		AutoObjects.A_CanvasItem(q_DirectionalLight2D)
		AutoObjects.A_Node2D(q_DirectionalLight2D)

	### START TEMP
	var temp_ImageTexture: ImageTexture = ImageTexture.new()
#?#	AutoResourcesImageTexture.nodeFunction(temp_ImageTexture)

	### END TEMP

	if randi() % 2 == 1:
		q_DirectionalLight2D.set_enabled(Autoload.get_bool())
	if randi() % 2 == 1:
		q_DirectionalLight2D.set_editor_only(Autoload.get_bool())
	if randi() % 2 == 1:
		q_DirectionalLight2D.set_color(Autoload.get_color())
	if randi() % 2 == 1:
		q_DirectionalLight2D.set_energy(Autoload.get_float())
	if randi() % 2 == 1:
		q_DirectionalLight2D.set_mode(Autoload.get_int())  #Mode
	if randi() % 2 == 1:
		q_DirectionalLight2D.set_height(Autoload.get_float())
	if randi() % 2 == 1:
		q_DirectionalLight2D.set_z_range_min(Autoload.get_int())
	if randi() % 2 == 1:
		q_DirectionalLight2D.set_z_range_max(Autoload.get_int())
	if randi() % 2 == 1:
		q_DirectionalLight2D.set_layer_range_min(Autoload.get_int())
	if randi() % 2 == 1:
		q_DirectionalLight2D.set_layer_range_max(Autoload.get_int())
	if randi() % 2 == 1:
		q_DirectionalLight2D.set_item_cull_mask(Autoload.get_int())
	if randi() % 2 == 1:
		q_DirectionalLight2D.set_shadow_enabled(Autoload.get_bool())
	if randi() % 2 == 1:
		q_DirectionalLight2D.set_shadow_color(Autoload.get_color())
	if randi() % 2 == 1:
		q_DirectionalLight2D.set_shadow_buffer_size(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_DirectionalLight2D.set_shadow_gradient_length(Autoload.get_float())
	if randi() % 2 == 1:
		q_DirectionalLight2D.set_shadow_filter(Autoload.get_int())  #ShadowFilter
	if randi() % 2 == 1:
		q_DirectionalLight2D.set_shadow_smooth(Autoload.get_int())
	if randi() % 2 == 1:
		q_DirectionalLight2D.set_item_shadow_cull_mask(Autoload.get_int())
	if randi() % 2 == 1:
		q_DirectionalLight2D.set_max_distance(Autoload.get_float())
