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
		
		var q_VisualScriptDeconstruct : VisualScriptDeconstruct = VisualScriptDeconstruct.new()
		
		q_VisualScriptDeconstruct.set_deconstruct_type(randi()%27)  # Variant_MAX
		
		if Autoload.WRONG_BUGS:
			q_VisualScriptDeconstruct.set_deconstruct_type(randi() % 1000 - 500)  # Variant_MAX
