extends Node2D

var q_SpriteFrames : SpriteFrames = SpriteFrames.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_SpriteFrames,true)

func nodeFunction(q_SpriteFrames : SpriteFrames, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_SpriteFrames = SpriteFrames.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_SpriteFrames)

	if randi() % 2 == 1:
		q_SpriteFrames.add_animation( Autoload.get_string())
	if randi() % 2 == 1:
		q_SpriteFrames.add_frame( Autoload.get_string(), Autoload.loadA("Sprite.png"), Autoload.get_int())

	if randi() % 2 == 1:
		q_SpriteFrames.clear( Autoload.get_string())
	if randi() % 2 == 1:
		q_SpriteFrames.clear_all()

	if randi() % 2 == 1:
		q_SpriteFrames.get_animation_loop( Autoload.get_string())
	if randi() % 2 == 1:
		q_SpriteFrames.get_animation_names()
	if randi() % 2 == 1:
		q_SpriteFrames.get_animation_speed( Autoload.get_string())
	if randi() % 2 == 1:
		q_SpriteFrames.get_frame( Autoload.get_string(), Autoload.get_int())
	if randi() % 2 == 1:
		q_SpriteFrames.get_frame_count( Autoload.get_string())

	if randi() % 2 == 1:
		q_SpriteFrames.has_animation( Autoload.get_string())

	if randi() % 2 == 1:
		q_SpriteFrames.remove_animation( Autoload.get_string())
	if randi() % 2 == 1:
		q_SpriteFrames.remove_frame( Autoload.get_string(), Autoload.get_int())

	if randi() % 2 == 1:
		q_SpriteFrames.rename_animation( Autoload.get_string(), Autoload.get_string())

	if randi() % 2 == 1:
		q_SpriteFrames.set_animation_loop( Autoload.get_string(), Autoload.get_bool())
	if randi() % 2 == 1:
		q_SpriteFrames.set_animation_speed( Autoload.get_string(), Autoload.get_float())
	if randi() % 2 == 1:
		q_SpriteFrames.set_frame( Autoload.get_string(), Autoload.get_int(), Texture.new())

