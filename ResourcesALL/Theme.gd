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
			q_Theme.clear_color( "Ballada", "Wyniki" )
		if randi() % 2 == 1:
			q_Theme.clear_constant( "Ballada", "Wyniki" )
		if randi() % 2 == 1:
			q_Theme.clear_font( "Ballada", "Wyniki" )
		if randi() % 2 == 1:
			q_Theme.clear_icon( "Ballada", "Wyniki" )
		if randi() % 2 == 1:
			q_Theme.clear_stylebox( "Ballada", "Wyniki" )
			
		if randi() % 2 == 1:
			q_Theme.copy_default_theme()
		if randi() % 2 == 1:
			q_Theme.copy_theme( Theme.new() )
			
		if randi() % 2 == 1:
			qq += str(q_Theme.get_color( "Ballada", "Wyniki" ))
		if randi() % 2 == 1:
			qq += str(q_Theme.get_color_list( "Wyniki" ))
		if randi() % 2 == 1:
			qq += str(q_Theme.get_constant( "Ballada", "Wyniki" ))
		if randi() % 2 == 1:
			qq += str(q_Theme.get_constant_list( "Wyniki" ))
		if randi() % 2 == 1:
			qq += str(q_Theme.get_font( "Ballada", "Wyniki" ))
		if randi() % 2 == 1:
			qq += str(q_Theme.get_font_list( "Wyniki" ))
		if randi() % 2 == 1:
			qq += str(q_Theme.get_icon( "Ballada", "Wyniki" ))
		if randi() % 2 == 1:
			qq += str(q_Theme.get_icon_list( "Wyniki" ))
		if randi() % 2 == 1:
			qq += str(q_Theme.get_stylebox( "Ballada", "Wyniki" ))
		if randi() % 2 == 1:
			qq += str(q_Theme.get_stylebox_list( "Wyniki" ))
		if randi() % 2 == 1:
			qq += str(q_Theme.get_stylebox_types())
		if randi() % 2 == 1:
			qq += str(q_Theme.get_type_list( "Wyniki" ))
			
		if randi() % 2 == 1:
			qq += str(q_Theme.has_color( "Ballada", "Wyniki" ))
		if randi() % 2 == 1:
			qq += str(q_Theme.has_constant( "Ballada", "Wyniki" ))
		if randi() % 2 == 1:
			qq += str(q_Theme.has_font( "Ballada", "Wyniki" ))
		if randi() % 2 == 1:
			qq += str(q_Theme.has_icon( "Ballada", "Wyniki" ))
		if randi() % 2 == 1:
			qq += str(q_Theme.has_stylebox( "Ballada", "Wyniki" ))
			
		if randi() % 2 == 1:
			q_Theme.set_color( "Ballada", "Wyniki", Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			q_Theme.set_constant( "Ballada", "Wyniki", Autoload.get_randi())
		if randi() % 2 == 1:
			q_Theme.set_font( "Ballada", "Wyniki", Font.new() )
		if randi() % 2 == 1:
			q_Theme.set_icon( "Ballada", "Wyniki", ImageTexture.new())
		if randi() % 2 == 1:
			q_Theme.set_stylebox( "Ballada", "Wyniki", StyleBox.new() )
