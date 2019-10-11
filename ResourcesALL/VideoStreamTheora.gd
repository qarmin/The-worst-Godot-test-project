extends Node2D

var q_VideoStreamTheora : VideoStreamTheora = VideoStreamTheora.new()
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
			q_VideoStreamTheora = VideoStreamTheora.new()
		
		
		if randi() % 2 == 1:
			qq += str(q_VideoStreamTheora.get_file())
		if randi() % 2 == 1:
			q_VideoStreamTheora.set_file( Autoload.get_string() )
