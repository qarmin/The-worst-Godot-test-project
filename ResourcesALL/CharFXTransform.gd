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
			q_CharFXTransform.set_relative_index(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_CharFXTransform.set_absolute_index(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_CharFXTransform.set_elapsed_time(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_CharFXTransform.set_visibility(bool(randi()%2))
		if randi() % 2 == 1:
			q_CharFXTransform.set_offset(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			q_CharFXTransform.set_color(Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			q_CharFXTransform.set_environment({"asfasf" : "Cras", "SZ" : Autoload.loadA("res://RES/default_env1.tres")})
		if randi() % 2 == 1:
			q_CharFXTransform.set_character(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			
		if randi() % 2 == 1:
			q_CharFXTransform.get_value_or("PRGORAM", randi() % Autoload.RANGE - Autoload.RANGE / 2)
