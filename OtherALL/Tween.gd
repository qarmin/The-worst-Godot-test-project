extends Tween

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	queue_free()

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		
		set_repeat(bool(randi()%2))
		set_tween_process_mode(randi() % 2) # TweenProcessMode
		set_speed_scale(randf() * 50)
		
#		TODO BECAUSE I'M LAZY
#		follow_method(
#		follow_property(
		
		qq += str(get_runtime())
#		TODO BECAUSE I'M LAZY
#		interpolate_callback(
#		interpolate_deferred_callback(
#		interpolate_method(
#		interpolate_property(
		
		qq += str(is_active())
		
		qq += str(remove(get_parent(), "asfasfasf"))
		qq += str(remove_all())
		
		qq += str(reset(get_parent(), "asfasfasf"))
		qq += str(reset_all())
		qq += str(resume(get_parent(), "asfasfasf"))
		qq += str(resume_all())
		set_active(bool(randi()%2))
		qq += str(start())
		qq += str(stop(get_parent(), "asfasfasf"))
		qq += str(stop_all())
#		TODO BECAUSE I'M LAZY
#		targeting_method(
#		targeting_property(
		
		qq += str(tell())
		
		if Autoload.WRONG_BUGS:
			set_repeat(bool(randi()%2))
			set_tween_process_mode(randi() % 1000 - 500) # TweenProcessMode
			set_speed_scale(randf() * 1000 - 500)
			
	#		TODO BECAUSE I'M LAZY
	#		follow_method(
	#		follow_property(
			
			qq += str(get_runtime())
	#		TODO BECAUSE I'M LAZY
	#		interpolate_callback(
	#		interpolate_deferred_callback(
	#		interpolate_method(
	#		interpolate_property(
			
			qq += str(is_active())
			
			qq += str(remove(get_parent(), "asfasfafwfasf"))
			qq += str(remove_all())
			
			qq += str(reset(get_parent(), "asfaqtsfasf"))
			qq += str(reset_all())
			qq += str(resume(get_parent(), "asf121asfasf"))
			qq += str(resume_all())
			set_active(bool(randi()%2))
			qq += str(start())
			qq += str(stop(get_parent(), "asf21rasfasf"))
			qq += str(stop_all())
	#		TODO BECAUSE I'M LAZY
	#		targeting_method(
	#		targeting_property(
			
			qq += str(tell())
