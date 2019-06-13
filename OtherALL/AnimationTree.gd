extends AnimationTree

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
		
		set_tree_root(AnimationNode.new())
		set_animation_player("../AnimationPlayer")
		set_active(bool(randi()%2))
		set_process_mode(randi() % 3) #AnimationProcessMode
		set_root_motion_track(".")
		
		#advance(randf() * 50)
		qq += str(get_root_motion_transform())
		rename_parameter(".",".")
		
		
		
		



