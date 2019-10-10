extends Node2D

var q_RandomNumberGenerator : RandomNumberGenerator = RandomNumberGenerator.new()
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
			q_RandomNumberGenerator = RandomNumberGenerator.new()

		
		if randi() % 2 == 1:
			q_RandomNumberGenerator.set_seed(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			
		if randi() % 2 == 1:
			qq += str(q_RandomNumberGenerator.randf())
		if randi() % 2 == 1:
			qq += str(q_RandomNumberGenerator.randf_range( randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			qq += str(q_RandomNumberGenerator.randfn( randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			qq += str(q_RandomNumberGenerator.randi())
		if randi() % 2 == 1:
			qq += str(q_RandomNumberGenerator.randi_range( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			q_RandomNumberGenerator.randomize()
