extends AnimatedSprite3D

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_Spatial(self)
		AutoObjects.A_VisualInstance(self)
		AutoObjects.A_GeometryInstance(self)
		AutoObjects.A_SpriteBase3D(self)
		nodeFunction(self)

func nodeFunction(q_AnimatedSprite3D : AnimatedSprite3D) -> void:

		if randi() % 2 == 1:
			q_AnimatedSprite3D.set_sprite_frames(Autoload.loadA("SpriteFrames.tres"))
		if randi() % 2 == 1:
			q_AnimatedSprite3D.set_animation(Autoload.get_string())
		if randi() % 2 == 1:
			q_AnimatedSprite3D.set_frame(Autoload.get_bool())
		if randi() % 2 == 1:
			q_AnimatedSprite3D._set_playing(Autoload.get_bool())
		if randi() % 2 == 1:
			q_AnimatedSprite3D.is_playing()
		if randi() % 2 == 1:
			q_AnimatedSprite3D.play(Autoload.get_string())
		if randi() % 2 == 1:
			q_AnimatedSprite3D.stop()
