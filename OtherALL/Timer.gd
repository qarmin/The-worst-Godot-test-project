extends Timer

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	queue_free()

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

		if randi() % 2 == 1:
			set_timer_process_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) #TimerProcessMode
		if randi() % 2 == 1:
			set_wait_time(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_one_shot(bool(randi()%2))
		if randi() % 2 == 1:
			set_autostart(bool(randi()%2))
		if randi() % 2 == 1:
			set_paused(bool(randi()%2))
		if randi() % 2 == 1:
			qq += str(get_time_left())
			
		if randi() % 2 == 1:
			qq += str(is_stopped())
		if randi() % 2 == 1:
			start(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			stop()
