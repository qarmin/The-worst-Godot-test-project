extends SpringArm

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
			
			set_collision_mask(randi()%50)
			set_shape(BoxShape.new())
			set_length(randf() * 50)
			set_margin(randf() * 50)
			
			add_excluded_object(RID())
			clear_excluded_objects()
			qq += str(get_hit_length())
			qq += str(remove_excluded_object(RID()))
			
			if Autoload.WRONG_BUGS:
				set_collision_mask(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				set_shape(BoxShape.new())
				set_length(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_margin(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				
				add_excluded_object(RID())
				clear_excluded_objects()
				qq += str(get_hit_length())
				qq += str(remove_excluded_object(RID()))
		else: #RANDI
			if randi() % 2 == 1:
				set_collision_mask(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_shape(BoxShape.new())
			if randi() % 2 == 1:
				set_length(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_margin(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				
			if randi() % 2 == 1:
				add_excluded_object(RID())
			if randi() % 2 == 1:
				clear_excluded_objects()
			if randi() % 2 == 1:
				qq += str(get_hit_length())
			if randi() % 2 == 1:
				qq += str(remove_excluded_object(RID()))
