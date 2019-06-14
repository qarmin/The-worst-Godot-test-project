extends Listener

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		clear_current()
		qq += str(get_listener_transform())
		qq += str(is_current())
		make_current()
		
		if Autoload.WRONG_BUGS:
			clear_current()
			qq += str(get_listener_transform())
			qq += str(is_current())
			make_current()
