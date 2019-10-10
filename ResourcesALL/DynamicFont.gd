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
			q_DynamicFont.set_size(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_DynamicFont.set_outline_size(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_DynamicFont.set_outline_color(Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			q_DynamicFont.set_use_mipmaps(bool(randi()%2))
		if randi() % 2 == 1:
			q_DynamicFont.set_use_filter(bool(randi()%2))
		if randi() % 2 == 1:
			q_DynamicFont.set_spacing(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2)
#	BUG	if randi() % 2 == 1:
#			q_DynamicFont.set_font_data(DynamicFontData.new())
			
		if randi() % 2 == 1:
			q_DynamicFont.add_fallback(DynamicFontData.new())
			
		if randi() % 2 == 1:
			qq += str(q_DynamicFont.get_fallback( randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(q_DynamicFont.get_fallback_count())
			
		if randi() % 2 == 1:
			q_DynamicFont.remove_fallback( randi() % Autoload.RANGE - Autoload.RANGE / 2 )
		if randi() % 2 == 1:
			q_DynamicFont.set_fallback( randi() % Autoload.RANGE - Autoload.RANGE / 2, DynamicFontData.new())
