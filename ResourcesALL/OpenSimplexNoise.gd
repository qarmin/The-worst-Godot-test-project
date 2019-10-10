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
			q_OpenSimplexNoise.set_seed(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_OpenSimplexNoise.set_octaves(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_OpenSimplexNoise.set_period(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_OpenSimplexNoise.set_persistence(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_OpenSimplexNoise.set_lacunarity(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			
		if randi() % 2 == 1:
			qq += str(q_OpenSimplexNoise.get_image( randi() % 10 - 5,randi() % 10 - 5))
		if randi() % 2 == 1:
			qq += str(q_OpenSimplexNoise.get_noise_1d( randf() * 10 - 5 ))
		if randi() % 2 == 1:
			qq += str(q_OpenSimplexNoise.get_noise_2d( randf() * 10 - 5,randf() * 10 - 5 ))
		if randi() % 2 == 1:
			qq += str(q_OpenSimplexNoise.get_noise_2dv( Vector2(randf() * 10 - 5,randf() * 10 - 5)))
		if randi() % 2 == 1:
			qq += str(q_OpenSimplexNoise.get_noise_3d( randf() * 10 - 5,randf() * 10 - 5,randf() * 10 - 5))
		if randi() % 2 == 1:
			qq += str(q_OpenSimplexNoise.get_noise_3dv( Vector3(randf() * 10 - 5,randf() * 10 - 5,randf() * 10 - 5)))
		if randi() % 2 == 1:
			qq += str(q_OpenSimplexNoise.get_noise_4d( randf() * 10 - 5,randf() * 10 - 5,randf() * 10 - 5,randf() * 10 - 5 ))
		if randi() % 2 == 1:
			qq += str(q_OpenSimplexNoise.get_seamless_image( randi()%10 - 5))
