extends Timer

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self)

func nodeFunction(q_Timer : Timer) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_Timer)
		AutoObjects.A_Node(q_Timer)
		
	if randi() % 2 == 1:
		q_Timer.set_timer_process_mode(Autoload.get_int()) #TimerProcessMode
	if randi() % 2 == 1:
		q_Timer.set_wait_time(Autoload.get_float())
	if randi() % 2 == 1:
		q_Timer.set_one_shot(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Timer.set_autostart(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Timer.set_paused(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Timer.get_time_left()

	if randi() % 2 == 1:
		q_Timer.is_stopped()
	if randi() % 2 == 1:
		q_Timer.start(Autoload.get_float())
	if randi() % 2 == 1:
		q_Timer.stop()
