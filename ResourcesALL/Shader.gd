extends Node2D

var q_Shader : Shader = Shader.new()
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
			q_Shader = Shader.new()
		
		
		if randi() % 2 == 1:
			q_Shader.set_code(Autoload.get_string())
			
		if randi() % 2 == 1:
			qq += str(q_Shader.get_default_texture_param( Autoload.get_string() ))
		if randi() % 2 == 1:
			qq += str(q_Shader.get_mode())
			
		if randi() % 2 == 1:
			qq += str(q_Shader.has_param( Autoload.get_string() ))
		if randi() % 2 == 1:
			q_Shader.set_default_texture_param( Autoload.get_string(), Autoload.loadA("Sprite.png") )
