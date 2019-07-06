extends Container

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
		
		queue_sort()
		fit_child_in_rect($Control, Rect2(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)))
		
		
		if Autoload.WRONG_BUGS:
			queue_sort()
			fit_child_in_rect(self, Rect2(Vector2(randf() * 1000 - 500, randf() * 1000 - 500),Vector2(randf() * 1000 - 500, randf() * 1000 - 500)))
