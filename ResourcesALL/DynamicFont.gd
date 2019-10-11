extends Node2D

var q_DynamicFont : DynamicFont = DynamicFont.new()
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
			q_DynamicFont = DynamicFont.new()
			
			
		
		if randi() % 2 == 1:
			q_DynamicFont.set_size(Autoload.get_randi())
		if randi() % 2 == 1:
			q_DynamicFont.set_outline_size(Autoload.get_randi())
		if randi() % 2 == 1:
			q_DynamicFont.set_outline_color(Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			q_DynamicFont.set_use_mipmaps(bool(randi()%2))
		if randi() % 2 == 1:
			q_DynamicFont.set_use_filter(bool(randi()%2))
		if randi() % 2 == 1:
			q_DynamicFont.set_spacing(Autoload.get_randi(),Autoload.get_randi())
#	BUG	if randi() % 2 == 1:
#			q_DynamicFont.set_font_data(DynamicFontData.new())
			
#	LEAK	if randi() % 2 == 1:
#			q_DynamicFont.add_fallback(DynamicFontData.new())
			
		if randi() % 2 == 1:
			qq += str(q_DynamicFont.get_fallback( Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(q_DynamicFont.get_fallback_count())
			
		if randi() % 2 == 1:
			q_DynamicFont.remove_fallback( Autoload.get_randi() )
#	BUG	if randi() % 2 == 1:
#			q_DynamicFont.set_fallback( Autoload.get_randi(), DynamicFontData.new())
