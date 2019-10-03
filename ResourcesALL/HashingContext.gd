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
		
		var q_HashingContext : HashingContext = HashingContext.new()
		#qq += str(q_HashingContext.finish())
		qq += str(q_HashingContext.start(randi()%3)) #HashType
		qq += str(q_HashingContext.update(PoolByteArray([124,12,412,412,412,412,412,421,4])))
		
		if Autoload.WRONG_BUGS:
			qq += str(q_HashingContext.finish())
			qq += str(q_HashingContext.start(randi() % 1000 - 500)) #HashType
			qq += str(q_HashingContext.update(PoolByteArray([124,12,412,412,412,412,412,421,4])))
