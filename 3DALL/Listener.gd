extends Listener

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
		
		clear_current()
		qq += str(get_listener_transform())
		qq += str(is_current())
		make_current()
		
		if Autoload.WRONG_BUGS:
			clear_current()
			qq += str(get_listener_transform())
			qq += str(is_current())
			make_current()

	else: #RANDI
		if randi() % 2 == 1:
			clear_current()
		if randi() % 2 == 1:
			qq += str(get_listener_transform())
		if randi() % 2 == 1:
			qq += str(is_current())
		if randi() % 2 == 1:
			make_current()
