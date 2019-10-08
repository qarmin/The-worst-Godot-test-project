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
			
		var q_DynamicFontData : DynamicFontData = DynamicFontData.new()
		if !Autoload.RANDI:
			
			q_DynamicFontData.set_antialiased(bool(randi()%2))
			q_DynamicFontData.set_hinting(randi() % 3) # Hinting
			q_DynamicFontData.set_font_path("res://RES/FreeMono.otf")
			
			if Autoload.WRONG_BUGS:
				q_DynamicFontData.set_antialiased(bool(randi()%2))
				q_DynamicFontData.set_hinting(randi() % Autoload.RANGE - Autoload.RANGE / 2) # Hinting
				q_DynamicFontData.set_font_path("res://RES/FreeMono.otf")

		else: #RANDI
			if randi() % 2 == 1:
				q_DynamicFontData.set_antialiased(bool(randi()%2))
			if randi() % 2 == 1:
				q_DynamicFontData.set_hinting(randi() % Autoload.RANGE - Autoload.RANGE / 2) # Hinting
			if randi() % 2 == 1:
				q_DynamicFontData.set_font_path("res://RES/FreeMono.otf")
