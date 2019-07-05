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
		
		var q_Thread : Thread = Thread.new()
		
		qq += str(q_Thread.get_id())
		qq += str(q_Thread.is_active())
		#var q_temp : Node = load("res://RES/Node.tscn").instance()
		#qq += str(q_Thread.start( q_temp, "Hiszpania", String(), randi() %3 ))#Priority
		#q_temp.queue_free()
		#q_Thread.wait_to_finish()
		
		if Autoload.WRONG_BUGS:
			qq += str(q_Thread.get_id())
			qq += str(q_Thread.is_active())
			#var q_temp_0 : Node = load("res://RES/Node.tscn").instance()
			qq += str(q_Thread.start(self, "Hiszpania", String(), randi() % 3))#randi() % 1000 - 500 ))#Priority
			#q_temp_0.queue_free()
			q_Thread.wait_to_finish()
			
func Hiszpania(var Wychodzi : String) -> void:
	print(Wychodzi)
