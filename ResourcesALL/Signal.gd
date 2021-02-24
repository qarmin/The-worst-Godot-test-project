extends Node2D

var q_Signal : Signal = Autoload.get_Signal()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_Signal,true)


func nodeFunction(q_Signal: Signal, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			if randi() % 2 == 1:
				q_Signal = Signal()
			if randi() % 2 == 1:
				q_Signal = Signal(self, Autoload.get_stringname())
				
	if randi() % 2 == 1:
		q_Signal.connect(Callable(self,Autoload.get_stringname()), Autoload.get_array(), Autoload.get_int())
	if randi() % 2 == 1:
		q_Signal.disconnect(Callable(self,Autoload.get_stringname()))
	if randi() % 2 == 1:
		q_Signal.emit(Callable(self,Autoload.get_stringname()), Autoload.get_array(), Autoload.get_int())
		
		
	if randi() % 2 == 1:
		q_Signal.get_connections()
	if randi() % 2 == 1:
		q_Signal.get_name()
	if randi() % 2 == 1:
		q_Signal.get_object()
	if randi() % 2 == 1:
		q_Signal.get_object_id()
		
	if randi() % 2 == 1:
		q_Signal.is_connected(Callable(self,Autoload.get_stringname()))
	if randi() % 2 == 1:
		q_Signal.is_null()
