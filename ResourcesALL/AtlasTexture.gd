extends Node2D

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
		
		var q_AtlasTexture : AtlasTexture = AtlasTexture.new()
		
		q_AtlasTexture.set_atlas(AnimatedTexture.new())
		q_AtlasTexture.set_region(Rect2(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)))
		q_AtlasTexture.set_margin(Rect2(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)))
		q_AtlasTexture.set_filter_clip(randf() * 50)
		
		if Autoload.WRONG_BUGS:
			q_AtlasTexture.set_atlas(AnimatedTexture.new())
			q_AtlasTexture.set_region(Rect2(Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500)))
			q_AtlasTexture.set_margin(Rect2(Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500)))
			q_AtlasTexture.set_filter_clip(randf() * 1000 - 500)
