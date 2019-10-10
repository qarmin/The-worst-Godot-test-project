extends AnimationPlayer

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
			set_root(".")
		if randi() % 2 == 1:
			set_current_animation("afaswqasfqwtfasf")
		if randi() % 2 == 1:
			set_assigned_animation("afasfaasfafasfasf")
		if randi() % 2 == 1:
			set_autoplay("afasfasafaasfwfasf")
		if randi() % 2 == 1:
			qq += str(get_current_animation_length())
		if randi() % 2 == 1:
			qq += str(get_current_animation_position())
		if randi() % 2 == 1:
			set_animation_process_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) # AnimationProcessMode
		if randi() % 2 == 1:
			set_default_blend_time(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_active(bool(randi()%2))
		if randi() % 2 == 1:
			set_speed_scale(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			
		if randi() % 2 == 1:
			qq += str(add_animation("asfqwgfafas", Animation.new()))
		if randi() % 2 == 1:
			advance(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			qq += str(animation_get_next("asdfqfawgaf"))
		if randi() % 2 == 1:
			animation_set_next("dafaffasfqawtga","asfaasfqwfqgag")
		if randi() % 2 == 1:
			clear_caches()
		if randi() % 2 == 1:
			clear_queue()
		if randi() % 2 == 1:
			qq += str(find_animation(Animation.new()))
		if randi() % 2 == 1:
			qq += str(get_animation("asfqawsfqa"))
		if randi() % 2 == 1:
			qq += str(get_animation_list())
		if randi() % 2 == 1:
			qq += str(get_blend_time("asfqwffasfas","asfesgsdegsd"))
		if randi() % 2 == 1:
			qq += str(get_playing_speed())
		if randi() % 2 == 1:
			qq += str(get_queue())
		if randi() % 2 == 1:
			qq += str(has_animation("asfqsfwagag"))
		if randi() % 2 == 1:
			qq += str(is_playing())
		if randi() % 2 == 1:
			play("afafaf",randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
		if randi() % 2 == 1:
			play_backwards("asfqwfa",randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			queue("asfasfasfxz")
		if randi() % 2 == 1:
			remove_animation("asfqgaegagfas")
		if randi() % 2 == 1:
			rename_animation("afafwfqawfadvfds","asfqawasfas")
		if randi() % 2 == 1:
			seek(randf() * Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
		if randi() % 2 == 1:
			set_blend_time("afafwfqawfadvfds","asfqawasfas",randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			stop(bool(randi()%2))
