extends Node2D

var q_Theme : Theme = Theme.new()
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
			q_Theme = Theme.new()
		
		
		if randi() % 2 == 1:
			q_Theme.set_default_font(Font.new())
			
#	BUG	if randi() % 2 == 1:
#			q_Theme.clear()
		if randi() % 2 == 1:
			q_Theme.clear_color( Autoload.get_string(), Autoload.get_string() )
		if randi() % 2 == 1:
			q_Theme.clear_constant( Autoload.get_string(), Autoload.get_string() )
		if randi() % 2 == 1:
			q_Theme.clear_font( Autoload.get_string(), Autoload.get_string() )
		if randi() % 2 == 1:
			q_Theme.clear_icon( Autoload.get_string(), Autoload.get_string() )
		if randi() % 2 == 1:
			q_Theme.clear_stylebox( Autoload.get_string(), Autoload.get_string() )
			
		if randi() % 2 == 1:
			q_Theme.copy_default_theme()
#	BUG	if randi() % 2 == 1:
#			q_Theme.copy_theme( Autoload.loadA("Theme.tres") )
			
		if randi() % 2 == 1:
			qq += str(q_Theme.get_color( Autoload.get_string(), Autoload.get_string() ))
		if randi() % 2 == 1:
			qq += str(q_Theme.get_color_list( Autoload.get_string() ))
		if randi() % 2 == 1:
			qq += str(q_Theme.get_constant( Autoload.get_string(), Autoload.get_string() ))
		if randi() % 2 == 1:
			qq += str(q_Theme.get_constant_list( Autoload.get_string() ))
		if randi() % 2 == 1:
			qq += str(q_Theme.get_font( Autoload.get_string(), Autoload.get_string() ))
		if randi() % 2 == 1:
			qq += str(q_Theme.get_font_list( Autoload.get_string() ))
		if randi() % 2 == 1:
			qq += str(q_Theme.get_icon( Autoload.get_string(), Autoload.get_string() ))
		if randi() % 2 == 1:
			qq += str(q_Theme.get_icon_list( Autoload.get_string() ))
		if randi() % 2 == 1:
			qq += str(q_Theme.get_stylebox( Autoload.get_string(), Autoload.get_string() ))
		if randi() % 2 == 1:
			qq += str(q_Theme.get_stylebox_list( Autoload.get_string() ))
		if randi() % 2 == 1:
			qq += str(q_Theme.get_stylebox_types())
		if randi() % 2 == 1:
			qq += str(q_Theme.get_type_list( Autoload.get_string() ))
			
		if randi() % 2 == 1:
			qq += str(q_Theme.has_color( Autoload.get_string(), Autoload.get_string() ))
		if randi() % 2 == 1:
			qq += str(q_Theme.has_constant( Autoload.get_string(), Autoload.get_string() ))
		if randi() % 2 == 1:
			qq += str(q_Theme.has_font( Autoload.get_string(), Autoload.get_string() ))
		if randi() % 2 == 1:
			qq += str(q_Theme.has_icon( Autoload.get_string(), Autoload.get_string() ))
		if randi() % 2 == 1:
			qq += str(q_Theme.has_stylebox( Autoload.get_string(), Autoload.get_string() ))
			
		if randi() % 2 == 1:
			q_Theme.set_color( Autoload.get_string(), Autoload.get_string(), Autoload.get_color())
		if randi() % 2 == 1:
			q_Theme.set_constant( Autoload.get_string(), Autoload.get_string(), Autoload.get_int())
		if randi() % 2 == 1:
			q_Theme.set_font( Autoload.get_string(), Autoload.get_string(), Font.new() )
		if randi() % 2 == 1:
			q_Theme.set_icon( Autoload.get_string(), Autoload.get_string(), Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			q_Theme.set_stylebox( Autoload.get_string(), Autoload.get_string(), StyleBox.new() )
