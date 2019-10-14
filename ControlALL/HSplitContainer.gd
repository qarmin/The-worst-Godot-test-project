extends HSplitContainer

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
		
		if randi() % 2 == 1:
			set_split_offset(Autoload.get_int())
		if randi() % 2 == 1:
			set_collapsed(Autoload.get_bool())
		if randi() % 2 == 1:
			set_dragger_visibility(Autoload.get_int())# draggervisibility
		if randi() % 2 == 1:
			clamp_split_offset()
