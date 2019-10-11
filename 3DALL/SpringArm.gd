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

		if randi() % 2 == 1:
			set_collision_mask(Autoload.get_randi())
		if randi() % 2 == 1:
			set_shape(BoxShape.new())
		if randi() % 2 == 1:
			set_length(Autoload.get_randf())
		if randi() % 2 == 1:
			set_margin(Autoload.get_randf())
			
		if randi() % 2 == 1:
			add_excluded_object(RID())
		if randi() % 2 == 1:
			clear_excluded_objects()
		if randi() % 2 == 1:
			qq += str(get_hit_length())
		if randi() % 2 == 1:
			qq += str(remove_excluded_object(RID()))
