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
		
		# SplitContainer
		
		set_split_offset(randi()%50)
		set_collapsed(bool(randi()%2))
		set_dragger_visibility(randi() % 3)
		clamp_split_offset()
		
		
		
		if Autoload.WRONG_BUGS:
			pass
