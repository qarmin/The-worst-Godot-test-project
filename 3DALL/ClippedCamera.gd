extends ClippedCamera

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
			set_margin(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_process_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) #ProcessMode
		if randi() % 2 == 1:
			set_collision_mask(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_clip_to_areas(bool(randi()%2))
		if randi() % 2 == 1:
			set_clip_to_bodies(bool(randi()%2))
		if randi() % 2 == 1:
			
			add_exception(get_parent())
		if randi() % 2 == 1:
			add_exception_rid(RID())
		if randi() % 2 == 1:
			clear_exceptions()
		if randi() % 2 == 1:
			qq += str(get_collision_mask_bit(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			remove_exception(get_parent())
		if randi() % 2 == 1:
			remove_exception_rid(RID())
		if randi() % 2 == 1:
			set_collision_mask_bit(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
