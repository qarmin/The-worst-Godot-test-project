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
		set_current_animation("afaswqqwtfasf")
		set_assigned_animation("afasfafasfasf")
		set_autoplay("afasfasafawfasf")
		get_current_animation_length()
		get_current_animation_position() 
		set_animation_process_mode(randi() % 3) # AnimationProcessMode
		set_default_blend_time(randf() * 50)
		set_active(bool(randi()%2))
		set_speed_scale(randf() * 50)
		
		add_animation("asfqwgfafas", Animation.new())
		advance(randf() * 50)
		animation_get_next("asdfqwgaf")
		animation_set_next("dafafafqawtga","asfafqwfqgag")
		clear_caches()
		clear_queue()
		find_animation(Animation.new())
		get_animation("asfqawfqa")
		get_animation_list()
		get_blend_time("asfqwfasfas","asfegsdegsd")
		get_playing_speed()
		get_queue()
		has_animation("asfqwagag")
		is_playing()
		play("afafaf",randf() * 50,randf() * 50,bool(randi()%2))
		play_backwards("asfqwfa",randf() * 50)
		queue("asfasfasfxz")
		remove_animation("asfqgaegagfas")
		rename_animation("afafwfqawfadvfds","asfqawasfas")
		seek(randf() * 50,bool(randi()%2))
		set_blend_time("afafwfqawfadvfds","asfqawasfas",randf() * 50)
		stop(bool(randi()%2))
		
		
		
