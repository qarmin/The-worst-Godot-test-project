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
		
		var q_Shader : Shader = Shader.new()
		if !Autoload.RANDI:
				
			q_Shader.set_code("KOD")
			
			qq += str(q_Shader.get_default_texture_param( "Cieniowanie" ))
			qq += str(q_Shader.get_mode())
			
			qq += str(q_Shader.has_param( "Spoko" ))
	#		q_Shader.set_default_texture_param( "Rozwiazac", load("res://RES/Sprite" + str(randi()%4 + 1) + ".png") )
			
			if Autoload.WRONG_BUGS:
				q_Shader.set_code("KOD")
				
				qq += str(q_Shader.get_default_texture_param( "Cieniowanie" ))
				qq += str(q_Shader.get_mode())
				
				qq += str(q_Shader.has_param( "Spoko" ))
				q_Shader.set_default_texture_param( "Rozwiazac", load("res://RES/Sprite" + str(randi()%4 + 1) + ".png") )

		else: #RANDI
			if randi() % 2 == 1:
				q_Shader.set_code("KOD")
				
			if randi() % 2 == 1:
				qq += str(q_Shader.get_default_texture_param( "Cieniowanie" ))
			if randi() % 2 == 1:
				qq += str(q_Shader.get_mode())
				
			if randi() % 2 == 1:
				qq += str(q_Shader.has_param( "Spoko" ))
			if randi() % 2 == 1:
				q_Shader.set_default_texture_param( "Rozwiazac", load("res://RES/Sprite" + str(randi()%4 + 1) + ".png") )
