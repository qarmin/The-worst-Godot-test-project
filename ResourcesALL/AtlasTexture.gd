extends Node2D

var q_AtlasTexture : AtlasTexture = AtlasTexture.new()
var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		if randi() % 2 == 1:
			q_AtlasTexture = AtlasTexture.new()
			
		if randi() % 2 == 1:
			q_AtlasTexture.set_atlas(AnimatedTexture.new())
		if randi() % 2 == 1:
			q_AtlasTexture.set_region(Autoload.get_rect2d())
		if randi() % 2 == 1:
			q_AtlasTexture.set_margin(Autoload.get_rect2d())
		if randi() % 2 == 1:
			q_AtlasTexture.set_filter_clip(Autoload.get_float())
