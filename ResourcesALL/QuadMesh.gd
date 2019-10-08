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
			
		var q_QuadMesh : QuadMesh = QuadMesh.new()
		if !Autoload.RANDI:
			
			q_QuadMesh.set_size(Vector2(randf() * 50,randf() * 50))
			
			if Autoload.WRONG_BUGS:
				q_QuadMesh.set_size(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))

		else: #RANDI
			if randi() % 2 == 1:
				q_QuadMesh.set_size(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
