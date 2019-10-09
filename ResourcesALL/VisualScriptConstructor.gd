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
			
		var q_VisualScriptConstructor : VisualScriptConstructor = VisualScriptConstructor.new()
		if !Autoload.RANDI:
			
			qq += str(q_VisualScriptConstructor.get_constructor())
			qq += str(q_VisualScriptConstructor.get_constructor_type())
			
			q_VisualScriptConstructor.set_constructor( {"as":25} )
			q_VisualScriptConstructor.set_constructor_type( randi() % 10042)
			
			if Autoload.WRONG_BUGS:
				qq += str(q_VisualScriptConstructor.get_constructor())
				qq += str(q_VisualScriptConstructor.get_constructor_type())
				
				q_VisualScriptConstructor.set_constructor( {"as":25} )
				q_VisualScriptConstructor.set_constructor_type(randi() % Autoload.RANGE - Autoload.RANGE / 2)

		else: #RANDI
			if randi() % 2 == 1:
				qq += str(q_VisualScriptConstructor.get_constructor())
			if randi() % 2 == 1:
				qq += str(q_VisualScriptConstructor.get_constructor_type())
				
			if randi() % 2 == 1:
				q_VisualScriptConstructor.set_constructor( {"as":25} )
			if randi() % 2 == 1:
				q_VisualScriptConstructor.set_constructor_type(randi() % Autoload.RANGE - Autoload.RANGE / 2)
