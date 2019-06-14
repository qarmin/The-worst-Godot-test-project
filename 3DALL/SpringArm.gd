extends SpringArm

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		set_collision_mask(randi()%50)
		set_shape(BoxShape.new())
		set_length(randf() * 50)
		set_margin(randf() * 50)
		
		add_excluded_object(RID())
		clear_excluded_objects()
		qq += str(get_hit_length())
		qq += str(remove_excluded_object(RID()))
		
		if Autoload.WRONG_BUGS:
			set_collision_mask(randi() % 1000 - 500)
			set_shape(BoxShape.new())
			set_length(randf() * 1000 - 500)
			set_margin(randf() * 1000 - 500)
			
			add_excluded_object(RID())
			clear_excluded_objects()
			qq += str(get_hit_length())
			qq += str(remove_excluded_object(RID()))
