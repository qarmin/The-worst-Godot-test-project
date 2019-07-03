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
		
		var q_RandomNumberGenerator : RandomNumberGenerator = RandomNumberGenerator.new()
		
		q_RandomNumberGenerator.set_seed(randi()%50)
		
		qq += str(q_RandomNumberGenerator.randf())
		qq += str(q_RandomNumberGenerator.randf_range( randf() * 50, randf() * 50 ))
		qq += str(q_RandomNumberGenerator.randfn( randf() * 50, randf() * 50 ))
		qq += str(q_RandomNumberGenerator.randi())
		qq += str(q_RandomNumberGenerator.randi_range( randi()%50, randi()%50 ))
		q_RandomNumberGenerator.randomize()
		
		if Autoload.WRONG_BUGS:
			q_RandomNumberGenerator.set_seed(randi() % 1000 - 500)
			
			qq += str(q_RandomNumberGenerator.randf())
			qq += str(q_RandomNumberGenerator.randf_range( randf() * 1000 - 500, randf() * 1000 - 500 ))
			qq += str(q_RandomNumberGenerator.randfn( randf() * 1000 - 500, randf() * 1000 - 500 ))
			qq += str(q_RandomNumberGenerator.randi())
			qq += str(q_RandomNumberGenerator.randi_range( randi() % 1000 - 500, randi() % 1000 - 500 ))
			q_RandomNumberGenerator.randomize()
