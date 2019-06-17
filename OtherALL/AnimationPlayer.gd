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
		
		set_root(".")
		#set_current_animation("afaswqqwtfasf")
		#set_assigned_animation("afasfafasfasf")
		#set_autoplay("afasfasafawfasf")
		#qq += str(get_current_animation_length())
		#qq += str(get_current_animation_position())
		set_animation_process_mode(randi() % 3) # AnimationProcessMode
		set_default_blend_time(randf() * 50)
		set_active(bool(randi()%2))
		set_speed_scale(randf() * 50)
		
		qq += str(add_animation("asfqwgfafas", Animation.new()))
		advance(randf() * 50)
		qq += str(animation_get_next("asdfqwgaf"))
		#animation_set_next("dafafafqawtga","asfafqwfqgag")
		clear_caches()
		clear_queue()
		qq += str(find_animation(Animation.new()))
		#qq += str(get_animation("asfqawfqa"))
		qq += str(get_animation_list())
		qq += str(get_blend_time("asfqwfasfas","asfegsdegsd"))
		qq += str(get_playing_speed())
		qq += str(get_queue())
		qq += str(has_animation("asfqwagag"))
		qq += str(is_playing())
		#play("afafaf",randf() * 50,randf() * 50,bool(randi()%2))
		#play_backwards("asfqwfa",randf() * 50)
		#queue("asfasfasfxz")
		#remove_animation("asfqgaegagfas")
		#rename_animation("afafwfqawfadvfds","asfqawasfas")
		#seek(randf() * 50,bool(randi()%2))
		set_blend_time("afafwfqawfadvfds","asfqawasfas",randf() * 50)
		stop(bool(randi()%2))
		
		if Autoload.WRONG_BUGS:
			set_root(".")
			set_current_animation("afaswqasfqwtfasf")
			set_assigned_animation("afasfaasfafasfasf")
			set_autoplay("afasfasafaasfwfasf")
			qq += str(get_current_animation_length())
			qq += str(get_current_animation_position())
			set_animation_process_mode(randi() % 1000 - 500) # AnimationProcessMode
			set_default_blend_time(randf() * 1000 - 500)
			set_active(bool(randi()%2))
			set_speed_scale(randf() * 1000 - 500)
			
			qq += str(add_animation("asfqwgfafas", Animation.new()))
			advance(randf() * 1000 - 500)
			qq += str(animation_get_next("asdfqfawgaf"))
			animation_set_next("dafaffasfqawtga","asfaasfqwfqgag")
			clear_caches()
			clear_queue()
			qq += str(find_animation(Animation.new()))
			qq += str(get_animation("asfqawsfqa"))
			qq += str(get_animation_list())
			qq += str(get_blend_time("asfqwffasfas","asfesgsdegsd"))
			qq += str(get_playing_speed())
			qq += str(get_queue())
			qq += str(has_animation("asfqsfwagag"))
			qq += str(is_playing())
			play("afafaf",randf() * 1000 - 500,randf() * 1000 - 500,bool(randi()%2))
			play_backwards("asfqwfa",randf() * 1000 - 500)
			queue("asfasfasfxz")
			remove_animation("asfqgaegagfas")
			rename_animation("afafwfqawfadvfds","asfqawasfas")
			seek(randf() * 1000 - 500,bool(randi()%2))
			set_blend_time("afafwfqawfadvfds","asfqawasfas",randf() * 1000 - 500)
			stop(bool(randi()%2))
