extends AnimatedSprite2D

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_AnimatedSprite2D: AnimatedSprite2D, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_AnimatedSprite2D)
		AutoObjects.A_Node(q_AnimatedSprite2D)
		AutoObjects.A_CanvasItem(q_AnimatedSprite2D)
		AutoObjects.A_Node2D(q_AnimatedSprite2D)

	### START TEMP
	var temp_SpriteFrames: SpriteFrames = SpriteFrames.new()
#?#	AutoResourcesSpriteFrames.nodeFunction(temp_SpriteFrames)

	### END TEMP

	if randi() % 2 == 1:
		q_AnimatedSprite2D.set_sprite_frames(temp_SpriteFrames)
	if randi() % 2 == 1:
		q_AnimatedSprite2D.set_animation(Autoload.get_string())
	if randi() % 2 == 1:
		q_AnimatedSprite2D.set_frame(Autoload.get_int())
	if randi() % 2 == 1:
		q_AnimatedSprite2D.set_speed_scale(Autoload.get_float())
	if randi() % 2 == 1:
		q_AnimatedSprite2D._set_playing(Autoload.get_bool())
	if randi() % 2 == 1:
		q_AnimatedSprite2D.set_specular_color(Autoload.get_color())
	if randi() % 2 == 1:
		q_AnimatedSprite2D.set_shininess(Autoload.get_float())
	if randi() % 2 == 1:
		q_AnimatedSprite2D.set_centered(Autoload.get_bool())
	if randi() % 2 == 1:
		q_AnimatedSprite2D.set_offset(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_AnimatedSprite2D.set_flip_h(Autoload.get_bool())
	if randi() % 2 == 1:
		q_AnimatedSprite2D.set_flip_v(Autoload.get_bool())

	if randi() % 2 == 1:
		q_AnimatedSprite2D.is_playing()
	if randi() % 2 == 1:
		q_AnimatedSprite2D.play(Autoload.get_string(), Autoload.get_bool())
	if randi() % 2 == 1:
		q_AnimatedSprite2D.stop()
