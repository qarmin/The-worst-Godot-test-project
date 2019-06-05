extends Popup

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x


func _process(delta) -> void:
	counter -= delta
	
	#  Vector2(randf() * 50,randf() * 50))
	#  randf() * 50)
	#  bool(randi()%2))
	#  randi()%50)
	#  Color(randf(),randf(),randf(),randf()))
	#  load("res://Sprite" + str(randi()%4 + 1) + ".png"))
	#  var qq : String = ""
	#  qq += str(
	#  qq = qq
	if counter <= 0:
		set_exclusive(bool(randi()%2))
		popup(Rect2(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)))
		popup_centered(Vector2(randf() * 50,randf() * 50))
		popup_centered_clamped(Vector2(randf() * 50,randf() * 50),randf())
		popup_centered_minsize(Vector2(randf() * 5,randf() * 5))
		popup_centered_ratio(randf())
		
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x