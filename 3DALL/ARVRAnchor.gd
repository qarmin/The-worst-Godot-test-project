extends ARVRAnchor

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
		
		set_anchor_id(randi()%50 + 4)
		qq += str(get_anchor_name())
		qq += str(get_is_active())
		qq += str(get_mesh())
		qq += str(get_plane())
		qq += str(get_size())
		
		if Autoload.WRONG_BUGS:
			set_anchor_id(randi() % 1000 - 500)
			qq += str(get_anchor_name())
			qq += str(get_is_active())
			qq += str(get_mesh())
			qq += str(get_plane())
			qq += str(get_size())
