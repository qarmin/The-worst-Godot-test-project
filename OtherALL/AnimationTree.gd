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

		if randi() % 2 == 1:
			set_tree_root(AnimationNode.new())
		if randi() % 2 == 1:
			set_animation_player("../AnimafqwfPlayer")
		if randi() % 2 == 1:
			set_active(bool(randi()%2))
		if randi() % 2 == 1:
			set_process_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) #AnimationProcessMode
		if randi() % 2 == 1:
			set_root_motion_track(".afs/aw")
			
		if randi() % 2 == 1:
			advance(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			qq += str(get_root_motion_transform())
		if randi() % 2 == 1:
			rename_parameter(".fqwq","qwtqwt.")
