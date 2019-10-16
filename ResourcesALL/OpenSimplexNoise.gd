extends Node2D

var q_OpenSimplexNoise : OpenSimplexNoise = OpenSimplexNoise.new()
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
			q_OpenSimplexNoise = OpenSimplexNoise.new()
			
		
		if randi() % 2 == 1:
			q_OpenSimplexNoise.set_seed(Autoload.get_int())
		if randi() % 2 == 1:
			q_OpenSimplexNoise.set_octaves(Autoload.get_int())
		if randi() % 2 == 1:
			q_OpenSimplexNoise.set_period(Autoload.get_float())
		if randi() % 2 == 1:
			q_OpenSimplexNoise.set_persistence(Autoload.get_float())
		if randi() % 2 == 1:
			q_OpenSimplexNoise.set_lacunarity(Autoload.get_float())
			
		if randi() % 2 == 1:
			qq += str(q_OpenSimplexNoise.get_image( Autoload.get_inti(50),Autoload.get_inti(50))) 
		if randi() % 2 == 1:
			qq += str(q_OpenSimplexNoise.get_noise_1d( Autoload.get_inti(50) )) 
		if randi() % 2 == 1:
			qq += str(q_OpenSimplexNoise.get_noise_2d( Autoload.get_inti(50),Autoload.get_inti(50) )) 
		if randi() % 2 == 1:
			qq += str(q_OpenSimplexNoise.get_noise_2dv( Vector2(Autoload.get_inti(50),Autoload.get_inti(50)))) 
		if randi() % 2 == 1:
			qq += str(q_OpenSimplexNoise.get_noise_3d( Autoload.get_inti(50),Autoload.get_inti(50),Autoload.get_inti(50))) 
		if randi() % 2 == 1:
			qq += str(q_OpenSimplexNoise.get_noise_3dv( Vector3(Autoload.get_inti(50),Autoload.get_inti(50),Autoload.get_inti(50)))) 
		if randi() % 2 == 1:
			qq += str(q_OpenSimplexNoise.get_noise_4d( Autoload.get_inti(50),Autoload.get_inti(50),Autoload.get_inti(50),Autoload.get_inti(50) )) 
		if randi() % 2 == 1:
			qq += str(q_OpenSimplexNoise.get_seamless_image( Autoload.get_inti(50))) 
