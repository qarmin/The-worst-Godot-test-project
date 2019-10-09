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
		if !Autoload.RANDI:
			
			q_VisualScriptDeconstruct.set_deconstruct_type(randi()%27)  # Variant_MAX
			
			if Autoload.WRONG_BUGS:
				q_VisualScriptDeconstruct.set_deconstruct_type(randi() % Autoload.RANGE - Autoload.RANGE / 2)  # Variant_MAX

		else: #RANDI
			if randi() % 2 == 1:
				q_VisualScriptDeconstruct.set_deconstruct_type(randi() % Autoload.RANGE - Autoload.RANGE / 2)  # Variant_MAX
