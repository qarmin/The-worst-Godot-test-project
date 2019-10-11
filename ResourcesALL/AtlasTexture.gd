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
			q_AtlasTexture.set_region(Rect2(Vector2(Autoload.get_randf(),Autoload.get_randf()),Vector2(Autoload.get_randf(),Autoload.get_randf())))
		if randi() % 2 == 1:
			q_AtlasTexture.set_margin(Rect2(Vector2(Autoload.get_randf(),Autoload.get_randf()),Vector2(Autoload.get_randf(),Autoload.get_randf())))
		if randi() % 2 == 1:
			q_AtlasTexture.set_filter_clip(Autoload.get_randf())
