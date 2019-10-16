extends Node2D

var q_AtlasTexture : AtlasTexture = AtlasTexture.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_AtlasTexture = AtlasTexture.new()

		if randi() % 2 == 1:
			q_AtlasTexture.set_atlas(AnimatedTexture.new())
		if randi() % 2 == 1:
			q_AtlasTexture.set_region(Autoload.get_rect2())
		if randi() % 2 == 1:
			q_AtlasTexture.set_margin(Autoload.get_rect2())
		if randi() % 2 == 1:
			q_AtlasTexture.set_filter_clip(Autoload.get_float())
