extends Node2D

var q_ViewportTexture : ViewportTexture = ViewportTexture.new()
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
			q_ViewportTexture = ViewportTexture.new()
		
		if randi() % 2 == 1:
			q_ViewportTexture.set_viewport_path_in_scene(Autoload.get_nodepath(self))
