extends ScrollContainer

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
		set_enable_h_scroll(bool(randi()%2))
		set_h_scroll(randi()%50)
		set_enable_v_scroll(bool(randi()%2))
		set_v_scroll(randi()%50)
		set_deadzone(randi()%50)
		var qq : String = ""
		qq += str(get_h_scrollbar())
		qq += str(get_v_scrollbar())
		qq = qq
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x