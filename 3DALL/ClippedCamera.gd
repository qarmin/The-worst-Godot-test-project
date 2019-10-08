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
		if !Autoload.RANDI:
			
			set_margin(randf() * 50)
			set_process_mode(randi() % 2) #ProcessMode
			set_collision_mask(randi() % 409600)
			set_clip_to_areas(bool(randi()%2))
			set_clip_to_bodies(bool(randi()%2))
			
			add_exception(get_parent())
			add_exception_rid(RID())
			clear_exceptions()
			qq += str(get_collision_mask_bit(randi() % 20))
			remove_exception(get_parent())
			remove_exception_rid(RID())
			set_collision_mask_bit(randi()%20,bool(randi()%2))
			
			if Autoload.WRONG_BUGS:
				set_margin(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_process_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) #ProcessMode
				set_collision_mask(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				set_clip_to_areas(bool(randi()%2))
				set_clip_to_bodies(bool(randi()%2))
				
				add_exception(get_parent())
				add_exception_rid(RID())
				clear_exceptions()
				qq += str(get_collision_mask_bit(randi() % Autoload.RANGE - Autoload.RANGE / 2))
				remove_exception(get_parent())
				remove_exception_rid(RID())
				set_collision_mask_bit(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
	
		else: #RANDI
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
