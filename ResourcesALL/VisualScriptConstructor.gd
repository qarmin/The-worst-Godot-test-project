extends Node2D

var q_VisualScriptConstructor : VisualScriptConstructor = VisualScriptConstructor.new()
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
			q_VisualScriptConstructor = VisualScriptConstructor.new()
			
		
		if randi() % 2 == 1:
			qq += str(q_VisualScriptConstructor.get_constructor())
		if randi() % 2 == 1:
			qq += str(q_VisualScriptConstructor.get_constructor_type())
			
		if randi() % 2 == 1:
			q_VisualScriptConstructor.set_constructor( {Autoload.get_string():25} )
		if randi() % 2 == 1:
			q_VisualScriptConstructor.set_constructor_type(Autoload.get_randi())
