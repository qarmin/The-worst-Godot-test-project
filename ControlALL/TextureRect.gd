extends TextureRect

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_CanvasItem(self)
		AutoObjects.A_Control(self)
		nodeFunction(self)

func nodeFunction(q_TextureRect : TextureRect) -> void:

		if randi() % 2 == 1:
			q_TextureRect.set_texture(Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			q_TextureRect.set_expand(Autoload.get_bool())
		if randi() % 2 == 1:
			q_TextureRect.set_stretch_mode(Autoload.get_int())
		if randi() % 2 == 1:
			q_TextureRect.set_flip_h(Autoload.get_bool())
		if randi() % 2 == 1:
			q_TextureRect.set_flip_v(Autoload.get_bool())
