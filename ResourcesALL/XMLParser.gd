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
		
		var q_XMLParser : XMLParser = XMLParser.new()
		
		qq += str(q_XMLParser.get_attribute_count())
		#qq += str(q_XMLParser.get_attribute_name( randi()%50 ))
		#qq += str(q_XMLParser.get_attribute_value( randi()%50 ))
		qq += str(q_XMLParser.get_current_line())
		#qq += str(q_XMLParser.get_named_attribute_value( "Niecelnie" ))
		qq += str(q_XMLParser.get_named_attribute_value_safe( "Praca" ))
		#qq += str(q_XMLParser.get_node_data())
		qq += str(q_XMLParser.get_node_name())
		qq += str(q_XMLParser.get_node_offset())
		qq += str(q_XMLParser.get_node_type())
		
		qq += str(q_XMLParser.has_attribute( "Celny" ))
		qq += str(q_XMLParser.is_empty())
		
		#qq += str(q_XMLParser.open( "Nawałnica" ))
		qq += str(q_XMLParser.open_buffer( PoolByteArray([11,124,1241,24,21,214,12,11])))
		
		qq += str(q_XMLParser.read())
		#qq += str(q_XMLParser.seek( randi()%50 ))
		q_XMLParser.skip_section()
		
		if Autoload.WRONG_BUGS:
			qq += str(q_XMLParser.get_attribute_count())
			qq += str(q_XMLParser.get_attribute_name( randi() % 1000 - 500))
			qq += str(q_XMLParser.get_attribute_value( randi() % 1000 - 500))
			qq += str(q_XMLParser.get_current_line())
			qq += str(q_XMLParser.get_named_attribute_value( "Niecelnie" ))
			qq += str(q_XMLParser.get_named_attribute_value_safe( "Praca" ))
			qq += str(q_XMLParser.get_node_data())
			qq += str(q_XMLParser.get_node_name())
			qq += str(q_XMLParser.get_node_offset())
			qq += str(q_XMLParser.get_node_type())
			
			qq += str(q_XMLParser.has_attribute( "Celny" ))
			qq += str(q_XMLParser.is_empty())
			
			qq += str(q_XMLParser.open( "Nawałnica" ))
			qq += str(q_XMLParser.open_buffer( PoolByteArray([11,124,1241,24,21,214,12,11])))
			
			qq += str(q_XMLParser.read())
			qq += str(q_XMLParser.seek( randi() % 1000 - 500))
			q_XMLParser.skip_section()
