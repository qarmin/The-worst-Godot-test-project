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
		
		var q_OpenSimplexNoise : OpenSimplexNoise = OpenSimplexNoise.new()
		
		q_OpenSimplexNoise.set_seed(randi()%50)
		q_OpenSimplexNoise.set_octaves(randi()%50)
		q_OpenSimplexNoise.set_period(randf() * 50)
		q_OpenSimplexNoise.set_persistence(randf() * 50)
		q_OpenSimplexNoise.set_lacunarity(randf() * 50)
		
		#qq += str(q_OpenSimplexNoise.get_image( randi()%50,randi()%50))
		qq += str(q_OpenSimplexNoise.get_noise_1d( randf() * 50 ))
		qq += str(q_OpenSimplexNoise.get_noise_2d( randf() * 50,randf() * 50 ))
		qq += str(q_OpenSimplexNoise.get_noise_2dv( Vector2(randf() * 50,randf() * 50)))
		qq += str(q_OpenSimplexNoise.get_noise_3d( randf() * 50,randf() * 50,randf() * 50))
		qq += str(q_OpenSimplexNoise.get_noise_3dv( Vector3(randf() * 50,randf() * 50,randf() * 50)))
		qq += str(q_OpenSimplexNoise.get_noise_4d( randf() * 50,randf() * 50,randf() * 50,randf() * 50 ))
		#qq += str(q_OpenSimplexNoise.get_seamless_image( randi()%50))
		
		if Autoload.WRONG_BUGS:
			q_OpenSimplexNoise.set_seed(randi() % 1000 - 500)
			q_OpenSimplexNoise.set_octaves(randi() % 1000 - 500)
			q_OpenSimplexNoise.set_period(randf() * 1000 - 500)
			q_OpenSimplexNoise.set_persistence(randf() * 1000 - 500)
			q_OpenSimplexNoise.set_lacunarity(randf() * 1000 - 500)
			
			qq += str(q_OpenSimplexNoise.get_image( randi() % 1000 - 500,randi() % 1000 - 500))
			qq += str(q_OpenSimplexNoise.get_noise_1d( randf() * 1000 - 500 ))
			qq += str(q_OpenSimplexNoise.get_noise_2d( randf() * 1000 - 500,randf() * 1000 - 500 ))
			qq += str(q_OpenSimplexNoise.get_noise_2dv( Vector2(randf() * 1000 - 500,randf() * 1000 - 500)))
			qq += str(q_OpenSimplexNoise.get_noise_3d( randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500))
			qq += str(q_OpenSimplexNoise.get_noise_3dv( Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500)))
			qq += str(q_OpenSimplexNoise.get_noise_4d( randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500 ))
			qq += str(q_OpenSimplexNoise.get_seamless_image( randi() % 1000 - 500))
