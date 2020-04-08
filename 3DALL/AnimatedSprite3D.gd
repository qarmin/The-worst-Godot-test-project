extends AnimatedSprite3D

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_AnimatedSprite3D : AnimatedSprite3D, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_AnimatedSprite3D)
		AutoObjects.A_Node(q_AnimatedSprite3D)
		AutoObjects.A_Node3D(q_AnimatedSprite3D)
		AutoObjects.A_VisualInstance3D(q_AnimatedSprite3D)
		AutoObjects.A_GeometryInstance3D(q_AnimatedSprite3D)
		AutoObjects.A_SpriteBase3D(q_AnimatedSprite3D)
		
	### START TEMP
	var temp_SpriteFrames : SpriteFrames = SpriteFrames.new()
#?#	AutoResourcesSpriteFrames.nodeFunction(temp_SpriteFrames)
	
	### END TEMP
	
	
	if randi() % 2 == 1:
		q_AnimatedSprite3D.set_sprite_frames(temp_SpriteFrames)
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
