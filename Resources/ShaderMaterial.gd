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
		
		var q_ShaderMaterial : ShaderMaterial = ShaderMaterial.new()
		
		q_ShaderMaterial.set_shader(Shader.new())
		
		qq += str(q_ShaderMaterial.get_shader_param( "Osiol"))
		qq += str(q_ShaderMaterial.property_can_revert( "Owies" ))
		qq += str(q_ShaderMaterial.property_get_revert( "Krowa" ))
		
		q_ShaderMaterial.set_shader_param( "Krokiew", randf() * 50)
		
		if Autoload.WRONG_BUGS:
			pass
