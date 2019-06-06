extends ClippedCamera

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _process(delta) -> void:
	counter -= delta
	
#		Vector2(randf() * 50,randf() * 50))
#		Vector3(randf() * 50,randf() * 50,randf() * 50))
#		randf() * 50)
#		bool(randi()%2))
#		randi()%50)
#		Color(randf(),randf(),randf(),randf()))
#		load("res://Sprite" + str(randi()%4 + 1) + ".png"))
#		var qq : String = ""
#		qq += str(
#		qq = qq
	
	if counter <= 0:
		var qq : String = ""
		
		set_margin(randf() * 50)
		set_process_mode(randi() % 2)
		set_collision_mask(randi() % 409600)
		set_clip_to_areas(bool(randi()%2))
		set_clip_to_bodies(bool(randi()%2))
		
		add_exception(get_parent())
		#add_exception_rid()
		clear_exceptions()
		qq += str(get_collision_mask_bit(randi() % 20))
		remove_exception(get_parent())
		#remove_exception_rid(RID(DynamicFont.new()))
		set_collision_mask_bit(randi()%20,bool(randi()%2))
		
		qq=qq
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x