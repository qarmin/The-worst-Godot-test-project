extends Node2D

var q_SpriteFrames : SpriteFrames = SpriteFrames.new()
var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		if randi() % 2 == 1:
			q_SpriteFrames = SpriteFrames.new()
			
		
		if randi() % 2 == 1:
			q_SpriteFrames.add_animation( Autoload.get_string() )
		if randi() % 2 == 1:
			q_SpriteFrames.add_frame( Autoload.get_string(), ImageTexture.new(), Autoload.get_randi() )
			
		if randi() % 2 == 1:
			q_SpriteFrames.clear( Autoload.get_string() )
		if randi() % 2 == 1:
			q_SpriteFrames.clear_all()

		if randi() % 2 == 1:
			qq += str(q_SpriteFrames.get_animation_loop( Autoload.get_string() ))
		if randi() % 2 == 1:
			qq += str(q_SpriteFrames.get_animation_names())
		if randi() % 2 == 1:
			qq += str(q_SpriteFrames.get_animation_speed( Autoload.get_string() ))
		if randi() % 2 == 1:
			qq += str(q_SpriteFrames.get_frame( Autoload.get_string(), 0 ))
		if randi() % 2 == 1:
			qq += str(q_SpriteFrames.get_frame_count( Autoload.get_string() ))
			
		if randi() % 2 == 1:
			qq += str(q_SpriteFrames.has_animation( Autoload.get_string() ))
			
		if randi() % 2 == 1:
			q_SpriteFrames.remove_animation( Autoload.get_string() )
		if randi() % 2 == 1:
			q_SpriteFrames.remove_frame( Autoload.get_string(), 0 )
			
		if randi() % 2 == 1:
			q_SpriteFrames.rename_animation( Autoload.get_string(), Autoload.get_string() )
			
		if randi() % 2 == 1:
			q_SpriteFrames.set_animation_loop( Autoload.get_string(), bool(randi()%2))
		if randi() % 2 == 1:
			q_SpriteFrames.set_animation_speed( Autoload.get_string(), Autoload.get_randf())
		if randi() % 2 == 1:
			q_SpriteFrames.set_frame( Autoload.get_string(), Autoload.get_randi(), Texture.new() )
			
