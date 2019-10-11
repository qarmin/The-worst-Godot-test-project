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
			qq += str(q_ShaderMaterial.get_shader_param( "Osiol"))
		if randi() % 2 == 1:
			qq += str(q_ShaderMaterial.property_can_revert( "Owies" ))
		if randi() % 2 == 1:
			qq += str(q_ShaderMaterial.property_get_revert( "Krowa" ))
			
		if randi() % 2 == 1:
			q_ShaderMaterial.set_shader_param( "Krokiew", Autoload.get_randf())
