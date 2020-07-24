extends TextureRect

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_TextureRect: TextureRect, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_TextureRect)
		AutoObjects.A_Node(q_TextureRect)
		AutoObjects.A_CanvasItem(q_TextureRect)
		AutoObjects.A_Control(q_TextureRect)

	### START TEMP
	var temp_ImageTexture: ImageTexture = ImageTexture.new()
#?#	AutoResourcesImageTexture.nodeFunction(temp_ImageTexture)

	### END TEMP

	if randi() % 2 == 1:
		q_TextureRect.set_texture(temp_ImageTexture)
	if randi() % 2 == 1:
		q_TextureRect.set_expand(Autoload.get_bool())
	if randi() % 2 == 1:
		q_TextureRect.set_stretch_mode(Autoload.get_int())
	if randi() % 2 == 1:
		q_TextureRect.set_flip_h(Autoload.get_bool())
	if randi() % 2 == 1:
		q_TextureRect.set_flip_v(Autoload.get_bool())
