extends GridContainer

const TIME_TO_ACTIVATE : Vector2 = Vector2(0.1,0.1)
var counter : float
const USE_GLOBAL_COUNTER : bool = true

func _ready() -> void:
	if USE_GLOBAL_COUNTER:
		for i in get_children():
			i.show()
			i.C_COUNTER = TIME_TO_ACTIVATE
	counter = randf() * (TIME_TO_ACTIVATE.y - TIME_TO_ACTIVATE.x) + TIME_TO_ACTIVATE.x


func _process(delta) -> void:
	counter -= delta
	
	if counter <= 0:
		queue_sort()
		
		counter = randf() * (TIME_TO_ACTIVATE.y - TIME_TO_ACTIVATE.x) + TIME_TO_ACTIVATE.x


