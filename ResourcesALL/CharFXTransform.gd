extends Node2D

var q_CharFXTransform : CharFXTransform = CharFXTransform.new()
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
			q_CharFXTransform = CharFXTransform.new()
			
		
		if randi() % 2 == 1:
			q_CharFXTransform.set_relative_index(Autoload.get_randi())
		if randi() % 2 == 1:
			q_CharFXTransform.set_absolute_index(Autoload.get_randi())
		if randi() % 2 == 1:
			q_CharFXTransform.set_elapsed_time(Autoload.get_randf())
		if randi() % 2 == 1:
			q_CharFXTransform.set_visibility(bool(randi()%2))
		if randi() % 2 == 1:
			q_CharFXTransform.set_offset(Vector2(Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			q_CharFXTransform.set_color(Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			q_CharFXTransform.set_environment({Autoload.get_string() : Autoload.get_string()})
		if randi() % 2 == 1:
			q_CharFXTransform.set_character(Autoload.get_randi())
			
		if randi() % 2 == 1:
			q_CharFXTransform.get_value_or(Autoload.get_string(), Autoload.get_randi())
