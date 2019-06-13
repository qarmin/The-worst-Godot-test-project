extends Timer

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		set_timer_process_mode(randi() % 2) #TimerProcessMode
		set_wait_time(randf() * 50)
		set_one_shot(bool(randi()%2))
		set_autostart(bool(randi()%2))
		set_paused(bool(randi()%2))
		get_time_left()
		
		is_stopped()
		start(randf() * 50)
		stop()
		
		