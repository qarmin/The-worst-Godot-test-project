extends Spatial

const TIME_TO_ACTIVATE : Vector2 = Vector2(0.2,0.3)
var counter_to_delete : int = 10000000000

func _ready() -> void:
	if !is_visible():
		queue_free()
	if Autoload.BASIC_COUTER > 0:
		counter_to_delete = Autoload.BASIC_COUTER
	for i in get_children():
		i.C_COUNTER = TIME_TO_ACTIVATE
		if !i.is_visible():
			i.queue_free()

func _process(_delta: float) -> void:
	counter_to_delete -= 1
	if counter_to_delete < 0:
		for i in get_children():
			i.queue_free()
		get_tree().quit()
