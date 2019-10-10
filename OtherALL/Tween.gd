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

		if randi() % 2 == 1:
			set_repeat(bool(randi()%2))
		if randi() % 2 == 1:
			set_tween_process_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) # TweenProcessMode
		if randi() % 2 == 1:
			set_speed_scale(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			
		if randi() % 2 == 1:
			qq += str(follow_method(self,str(randf()),randf() * Autoload.RANGE - Autoload.RANGE / 2,self,str(randf()),randf() * Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)) # TransitionType, EaseType
		if randi() % 2 == 1:
			qq += str(follow_property(self,str(randf()),randf() * Autoload.RANGE - Autoload.RANGE / 2,self, str(randf()),randf() * Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))# TransitionType, EaseType
			
		if randi() % 2 == 1:
			qq += str(get_runtime())
			
		if randi() % 2 == 1:
			interpolate_callback(self, randf() * Autoload.RANGE - Autoload.RANGE / 2, str(randf() * Autoload.RANGE - Autoload.RANGE / 2), randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			interpolate_deferred_callback(self, randf() * Autoload.RANGE - Autoload.RANGE / 2, str(randf() * Autoload.RANGE - Autoload.RANGE / 2), randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			interpolate_method(self, str(randf() * Autoload.RANGE - Autoload.RANGE / 2), str(randf() * Autoload.RANGE - Autoload.RANGE / 2), str(randf() * Autoload.RANGE - Autoload.RANGE / 2), randf() * Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)# TransitionType, EaseType
		if randi() % 2 == 1:
			interpolate_property(self, str(randf() * Autoload.RANGE - Autoload.RANGE / 2), str(randf() * Autoload.RANGE - Autoload.RANGE / 2), str(randf() * Autoload.RANGE - Autoload.RANGE / 2), randf() * Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)# TransitionType, EaseType
			
		if randi() % 2 == 1:
			qq += str(is_active())
			
		if randi() % 2 == 1:
			qq += str(remove(get_parent(), "asfasfafwfasf"))
		if randi() % 2 == 1:
			qq += str(remove_all())
			
		if randi() % 2 == 1:
			qq += str(reset(get_parent(), "asfaqtsfasf"))
		if randi() % 2 == 1:
			qq += str(reset_all())
		if randi() % 2 == 1:
			qq += str(resume(get_parent(), "asf121asfasf"))
		if randi() % 2 == 1:
			qq += str(resume_all())
		if randi() % 2 == 1:
			set_active(bool(randi()%2))
		if randi() % 2 == 1:
			qq += str(start())
		if randi() % 2 == 1:
			qq += str(stop(get_parent(), "asf21rasfasf"))
		if randi() % 2 == 1:
			qq += str(stop_all())

		if randi() % 2 == 1:
			targeting_method(self, str(randf() * Autoload.RANGE - Autoload.RANGE / 2), self, str(randf() * Autoload.RANGE - Autoload.RANGE / 2), str(randf() * Autoload.RANGE - Autoload.RANGE / 2), randf() * Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)# TransitionType, EaseType
		if randi() % 2 == 1:
			targeting_property(self, str(randf() * Autoload.RANGE - Autoload.RANGE / 2), self, str(randf() * Autoload.RANGE - Autoload.RANGE / 2), str(randf() * Autoload.RANGE - Autoload.RANGE / 2), randf() * Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)# TransitionType, EaseType
			
		if randi() % 2 == 1:
			qq += str(tell())
