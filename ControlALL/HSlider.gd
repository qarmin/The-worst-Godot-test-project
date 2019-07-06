extends HSlider

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
		
		## Slider
		set_editable(bool(randi() % 2))
		set_scrollable(bool(randi() % 2))
		set_ticks(randi()%50)
		set_ticks_on_borders(bool(randi() % 2))
		set_focus_mode(randi() % (FOCUS_ALL + 1))
		
		if Autoload.WRONG_BUGS:
			
			## Slider
			set_editable(bool(randi() % 2))
			set_scrollable(bool(randi() % 2))
			set_ticks(randi() % 1000 - 500)
			set_ticks_on_borders(bool(randi() % 2))
			set_focus_mode(randi() % 1000 - 500)
