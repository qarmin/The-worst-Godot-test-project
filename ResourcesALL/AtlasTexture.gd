extends Node2D

var q_AtlasTexture: AtlasTexture = AtlasTexture.new()

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_AtlasTexture, true)


func nodeFunction(q_AtlasTexture: AtlasTexture, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_AtlasTexture = AtlasTexture.new()
#	if randi() % 2 == 1: #MISSING
#		AutoResourcesTexture.nodeFunction(q_AtlasTexture)

	### START TEMP
	var temp_AnimatedTexture: AnimatedTexture = AnimatedTexture.new()
	AutoResourcesAnimatedTexture.nodeFunction(temp_AnimatedTexture)

	### END TEMP

	if randi() % 2 == 1:
		q_AtlasTexture.set_atlas(temp_AnimatedTexture)
	if randi() % 2 == 1:
		q_AtlasTexture.set_region(Autoload.get_rect2())
	if randi() % 2 == 1:
		q_AtlasTexture.set_margin(Autoload.get_rect2())
	if randi() % 2 == 1:
		q_AtlasTexture.set_filter_clip(Autoload.get_float())
