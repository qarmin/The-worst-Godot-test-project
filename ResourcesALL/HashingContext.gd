extends Node2D

var q_HashingContext : HashingContext = HashingContext.new()
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
			q_HashingContext = HashingContext.new()
			
		
		if randi() % 2 == 1:
			qq += str(q_HashingContext.finish())
		if randi() % 2 == 1:
			qq += str(q_HashingContext.start(Autoload.get_randi())) #HashType
		if randi() % 2 == 1:
			qq += str(q_HashingContext.update(PoolByteArray([124,12,412,412,412,412,412,421,4])))
