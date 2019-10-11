extends Node2D

var q_Thread : Thread = Thread.new()
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
			q_Thread = Thread.new()
		
		
		if randi() % 2 == 1:
			qq += str(q_Thread.get_id())
		if randi() % 2 == 1:
			qq += str(q_Thread.is_active())
#	LEAK	if randi() % 2 == 1:
#			qq += str(q_Thread.start(self, "Hiszpania", String(), Autoload.get_randi() ))#Priority
		if randi() % 2 == 1:
			q_Thread.wait_to_finish()
			
			
func Hiszpania(var Wychodzi : String) -> void:
	print(Wychodzi)
