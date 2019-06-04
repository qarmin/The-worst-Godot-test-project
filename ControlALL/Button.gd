extends Button

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
#		str(randi()%50000))
#		var qq : String = ""
#		qq += str(
#		qq = qq
	
	if counter <= 0:
		set_text(str(randi()%50000))
		set_button_icon(load("res://Sprite" + str(randi()%4 + 1) + ".png"))
		set_flat(bool(randi()%2))
		set_clip_text(bool(randi()%2))
		set_text_align(randi()%3)
		
		
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x