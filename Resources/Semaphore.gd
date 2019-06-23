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
		
		var q_Semaphore : Semaphore = Semaphore.new()
		
		qq += str(q_Semaphore.post())
		qq += str(q_Semaphore.wait())
		
		if Autoload.WRONG_BUGS:
			pass
