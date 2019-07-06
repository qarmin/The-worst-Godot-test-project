extends Popup

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
		
		set_exclusive(bool(randi()%2))
		popup(Rect2(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)))
		popup_centered(Vector2(randf() * 50,randf() * 50))
		popup_centered_clamped(Vector2(randf() * 50,randf() * 50),randf())
		popup_centered_minsize(Vector2(randf() * 5,randf() * 5))
		popup_centered_ratio(randf())
		
		if Autoload.WRONG_BUGS:
			set_exclusive(bool(randi()%2))
			popup(Rect2(Vector2(randf() * 1000 - 500, randf() * 1000 - 500),Vector2(randf() * 1000 - 500, randf() * 1000 - 500)))
			popup_centered(Vector2(randf() * 1000 - 500, randf() * 1000 - 500))
			popup_centered_clamped(Vector2(randf() * 1000 - 500, randf() * 1000 - 500),randf())
			popup_centered_minsize(Vector2(randf() * 1000 - 500, randf() * 1000 - 500))
			popup_centered_ratio(randf() * 1000 - 500)
			
