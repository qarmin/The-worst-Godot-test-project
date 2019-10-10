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
			q_SpriteFrames.add_animation( "Gadajacy Pies" )
		if randi() % 2 == 1:
			q_SpriteFrames.add_frame( "Gadajacy Pies", ImageTexture.new(), randi() % Autoload.RANGE - Autoload.RANGE / 2 )
			
		if randi() % 2 == 1:
			q_SpriteFrames.clear( "Stos" )
		if randi() % 2 == 1:
			q_SpriteFrames.clear_all()

		if randi() % 2 == 1:
			qq += str(q_SpriteFrames.get_animation_loop( "Gadajacy Pies" ))
		if randi() % 2 == 1:
			qq += str(q_SpriteFrames.get_animation_names())
		if randi() % 2 == 1:
			qq += str(q_SpriteFrames.get_animation_speed( "Gadajacy Pies" ))
		if randi() % 2 == 1:
			qq += str(q_SpriteFrames.get_frame( "Gadajacy Pies", 0 ))
		if randi() % 2 == 1:
			qq += str(q_SpriteFrames.get_frame_count( "Gadajacy Pies" ))
			
		if randi() % 2 == 1:
			qq += str(q_SpriteFrames.has_animation( "Gadajacy Pies" ))
			
		if randi() % 2 == 1:
			q_SpriteFrames.remove_animation( "Gadajacy Pies" )
		if randi() % 2 == 1:
			q_SpriteFrames.remove_frame( "Gadajacy Pies", 0 )
			
		if randi() % 2 == 1:
			q_SpriteFrames.rename_animation( "Gadajacy Pies", "Stos" )
			
		if randi() % 2 == 1:
			q_SpriteFrames.set_animation_loop( "Stos", bool(randi()%2))
		if randi() % 2 == 1:
			q_SpriteFrames.set_animation_speed( "Stos", randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_SpriteFrames.set_frame( "Stos", randi() % Autoload.RANGE - Autoload.RANGE / 2, Texture.new() )
			
