extends Popup

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self) 

func nodeFunction(q_Popup : Popup) -> void:
	
	AutoObjects.A_Object(q_Popup)
	AutoObjects.A_Node(q_Popup)
	AutoObjects.A_CanvasItem(q_Popup)
	AutoObjects.A_Control(q_Popup)
	return # TOO SLOW
	
	if randi() % 2 == 1:
		q_Popup.set_exclusive(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Popup.popup(Autoload.get_rect2())
	if Autoload.SLOW_FUNCTIONS:
		if randi() % 2 == 1:
			q_Popup.popup_centered(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Popup.popup_centered_clamped(Autoload.get_vector2(),Autoload.get_float())
	if Autoload.SLOW_FUNCTIONS:
		if randi() % 2 == 1:
			q_Popup.popup_centered_minsize(Autoload.get_vector2())
		if randi() % 2 == 1:
			q_Popup.popup_centered_ratio(Autoload.get_float())

