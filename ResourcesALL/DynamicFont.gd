extends Node2D

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
		
		var q_DynamicFont : DynamicFont = DynamicFont.new()
		
		#q_DynamicFont.set_size(randi()%50)
		#q_DynamicFont.set_outline_size(randi()%50)
		#q_DynamicFont.set_outline_color(Color(randf(),randf(),randf(),randf()))
		q_DynamicFont.set_use_mipmaps(bool(randi()%2))
		q_DynamicFont.set_use_filter(bool(randi()%2))
		for i in range(4): #SpacingType
			q_DynamicFont.set_spacing(i,randi()%50)
		#q_DynamicFont.set_font_data(DynamicFontData.new())
		
		#q_DynamicFont.add_fallback( DynamicFontData.new() )
		
		#qq += str(q_DynamicFont.get_fallback( 0))
		qq += str(q_DynamicFont.get_fallback_count())
		
		#q_DynamicFont.remove_fallback( 0 )
		#q_DynamicFont.set_fallback( 0, DynamicFontData.new() )
		
		if Autoload.WRONG_BUGS:
			q_DynamicFont.set_size(randi() % 1000 - 500)
			q_DynamicFont.set_outline_size(randi() % 1000 - 500)
			q_DynamicFont.set_outline_color(Color(randf(),randf(),randf(),randf()))
			q_DynamicFont.set_use_mipmaps(bool(randi()%2))
			q_DynamicFont.set_use_filter(bool(randi()%2))
			for i in range(4): #SpacingType
				q_DynamicFont.set_spacing(i,randi() % 1000 - 500)
			q_DynamicFont.set_font_data(DynamicFontData.new())
			
			q_DynamicFont.add_fallback( DynamicFontData.new() )
			
			qq += str(q_DynamicFont.get_fallback( randi() % 1000 - 500))
			qq += str(q_DynamicFont.get_fallback_count())
			
			q_DynamicFont.remove_fallback( randi() % 1000 - 500 )
			q_DynamicFont.set_fallback( randi() % 1000 - 500, DynamicFontData.new() )
