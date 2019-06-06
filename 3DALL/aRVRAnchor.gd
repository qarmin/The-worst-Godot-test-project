extends ARVRAnchor

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _process(delta) -> void:
	counter -= delta
	
#		Vector2(randf() * 50,randf() * 50))
#		randf() * 50)
#		bool(randi()%2))
#		randi()%50)
#		Color(randf(),randf(),randf(),randf()))
#		load("res://Sprite" + str(randi()%4 + 1) + ".png"))
#		var qq : String = ""
#		qq += str(
#		qq = qq
	
	if counter <= 0:
		var qq : String = ""
		
		set_anchor_id(randi()%50 + 4)
		qq += str(get_anchor_name())
		qq += str(get_is_active())
		qq += str(get_mesh())
		qq += str(get_plane())
		qq += str(get_size())
		
		qq=qq
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x