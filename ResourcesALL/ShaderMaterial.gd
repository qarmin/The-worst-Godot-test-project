extends Node2D

var q_ShaderMaterial : ShaderMaterial = ShaderMaterial.new()
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
			q_ShaderMaterial = ShaderMaterial.new()
		
		
		if randi() % 2 == 1:
			q_ShaderMaterial.set_shader(Shader.new())
			
		if randi() % 2 == 1:
			qq += str(q_ShaderMaterial.get_shader_param( Autoload.get_string()))
		if randi() % 2 == 1:
			qq += str(q_ShaderMaterial.property_can_revert( Autoload.get_string() ))
#	BUG core/pool_vector.h:326:69: runtime error: reference binding to null pointer of type 'int'	if randi() % 2 == 1:
#			qq += str(q_ShaderMaterial.property_get_revert( Autoload.get_string() ))
			
		if randi() % 2 == 1:
			q_ShaderMaterial.set_shader_param( Autoload.get_string(), Autoload.get_float())
