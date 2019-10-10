extends Node2D

var q_VisualScriptComment : VisualScriptComment = VisualScriptComment.new()
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
			q_VisualScriptComment = VisualScriptComment.new()
			
		
		if randi() % 2 == 1:
			q_VisualScriptComment.set_title("Koń")
		if randi() % 2 == 1:
			q_VisualScriptComment.set_description("Zwierzę")
		if randi() % 2 == 1:
			q_VisualScriptComment.set_size(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
