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
		
		var q_ResourveInteractiveLoader : ResourveInteractiveLoader = ResourveInteractiveLoader.new()
		
		q_ResourveInteractiveLoader.
		q_ResourveInteractiveLoader.
		q_ResourveInteractiveLoader.
		
		if Autoload.WRONG_BUGS:
			pass
