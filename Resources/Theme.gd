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
		
		var q_Theme : Theme = Theme.new()
		
		#q_Theme.set_default_font(Font.new())
		
		q_Theme.clear()
		#q_Theme.clear_color( "Ballada", "Wyniki" )
		#q_Theme.clear_constant( "Ballada", "Wyniki" )
		#q_Theme.clear_font( "Ballada", "Wyniki" )
		#q_Theme.clear_icon( "Ballada", "Wyniki" )
		#q_Theme.clear_stylebox( "Ballada", "Wyniki" )
		
		q_Theme.copy_default_theme()
		q_Theme.copy_theme( Theme.new() )
		
		qq += str(q_Theme.get_color( "Ballada", "Wyniki" ))
		qq += str(q_Theme.get_color_list( "Wyniki" ))
		qq += str(q_Theme.get_constant( "Ballada", "Wyniki" ))
		qq += str(q_Theme.get_constant_list( "Wyniki" ))
		qq += str(q_Theme.get_font( "Ballada", "Wyniki" ))
		qq += str(q_Theme.get_font_list( "Wyniki" ))
		qq += str(q_Theme.get_icon( "Ballada", "Wyniki" ))
		qq += str(q_Theme.get_icon_list( "Wyniki" ))
		qq += str(q_Theme.get_stylebox( "Ballada", "Wyniki" ))
		qq += str(q_Theme.get_stylebox_list( "Wyniki" ))
		qq += str(q_Theme.get_stylebox_types())
		qq += str(q_Theme.get_type_list( "Wyniki" ))
		
		qq += str(q_Theme.has_color( "Ballada", "Wyniki" ))
		qq += str(q_Theme.has_constant( "Ballada", "Wyniki" ))
		qq += str(q_Theme.has_font( "Ballada", "Wyniki" ))
		qq += str(q_Theme.has_icon( "Ballada", "Wyniki" ))
		qq += str(q_Theme.has_stylebox( "Ballada", "Wyniki" ))
		
		q_Theme.set_color( "Ballada", "Wyniki", Color(randf(),randf(),randf(),randf()))
		q_Theme.set_constant( "Ballada", "Wyniki", randi()%50)
		#q_Theme.set_font( "Ballada", "Wyniki", Font.new() )
		#q_Theme.set_icon( "Ballada", "Wyniki", Texture.new())
		#q_Theme.set_stylebox( "Ballada", "Wyniki", StyleBox.new() )
		
		
		if Autoload.WRONG_BUGS:
			q_Theme.set_default_font(Font.new())
			
			q_Theme.clear()
			q_Theme.clear_color( "Ballada", "Wyniki" )
			q_Theme.clear_constant( "Ballada", "Wyniki" )
			q_Theme.clear_font( "Ballada", "Wyniki" )
			q_Theme.clear_icon( "Ballada", "Wyniki" )
			q_Theme.clear_stylebox( "Ballada", "Wyniki" )
			
			q_Theme.copy_default_theme()
			q_Theme.copy_theme( Theme.new() )
			
			qq += str(q_Theme.get_color( "Ballada", "Wyniki" ))
			qq += str(q_Theme.get_color_list( "Wyniki" ))
			qq += str(q_Theme.get_constant( "Ballada", "Wyniki" ))
			qq += str(q_Theme.get_constant_list( "Wyniki" ))
			qq += str(q_Theme.get_font( "Ballada", "Wyniki" ))
			qq += str(q_Theme.get_font_list( "Wyniki" ))
			qq += str(q_Theme.get_icon( "Ballada", "Wyniki" ))
			qq += str(q_Theme.get_icon_list( "Wyniki" ))
			qq += str(q_Theme.get_stylebox( "Ballada", "Wyniki" ))
			qq += str(q_Theme.get_stylebox_list( "Wyniki" ))
			qq += str(q_Theme.get_stylebox_types())
			qq += str(q_Theme.get_type_list( "Wyniki" ))
			
			qq += str(q_Theme.has_color( "Ballada", "Wyniki" ))
			qq += str(q_Theme.has_constant( "Ballada", "Wyniki" ))
			qq += str(q_Theme.has_font( "Ballada", "Wyniki" ))
			qq += str(q_Theme.has_icon( "Ballada", "Wyniki" ))
			qq += str(q_Theme.has_stylebox( "Ballada", "Wyniki" ))
			
			q_Theme.set_color( "Ballada", "Wyniki", Color(randf(),randf(),randf(),randf()))
			q_Theme.set_constant( "Ballada", "Wyniki", randi() % 1000 - 500)
			q_Theme.set_font( "Ballada", "Wyniki", Font.new() )
			q_Theme.set_icon( "Ballada", "Wyniki", Texture.new())
			q_Theme.set_stylebox( "Ballada", "Wyniki", StyleBox.new() )
