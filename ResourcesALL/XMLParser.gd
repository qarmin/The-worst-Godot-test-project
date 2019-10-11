extends Node2D

var q_XMLParser : XMLParser = XMLParser.new()
var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	#LEAK
#	if counter <= 0:
#		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#		if randi() % 2 == 1:
#			q_XMLParser = XMLParser.new()
#
#
#		if randi() % 2 == 1:
#			qq += str(q_XMLParser.get_attribute_count())
#		if randi() % 2 == 1:
#			qq += str(q_XMLParser.get_attribute_name( Autoload.get_randi()))
#		if randi() % 2 == 1:
#			qq += str(q_XMLParser.get_attribute_value( Autoload.get_randi()))
#		if randi() % 2 == 1:
#			qq += str(q_XMLParser.get_current_line())
#		if randi() % 2 == 1:
#			qq += str(q_XMLParser.get_named_attribute_value( Autoload.get_string() ))
#		if randi() % 2 == 1:
#			qq += str(q_XMLParser.get_named_attribute_value_safe( Autoload.get_string() ))
#		if randi() % 2 == 1:
#			qq += str(q_XMLParser.get_node_data())
#		if randi() % 2 == 1:
#			qq += str(q_XMLParser.get_node_name())
#		if randi() % 2 == 1:
#			qq += str(q_XMLParser.get_node_offset())
#		if randi() % 2 == 1:
#			qq += str(q_XMLParser.get_node_type())
#
#		if randi() % 2 == 1:
#			qq += str(q_XMLParser.has_attribute( Autoload.get_string() ))
#		if randi() % 2 == 1:
#			qq += str(q_XMLParser.is_empty())
#
#		if randi() % 2 == 1:
#			qq += str(q_XMLParser.open( Autoload.get_string() ))
#		if randi() % 2 == 1:
#			qq += str(q_XMLParser.open_buffer( PoolByteArray([11,124,1241,24,21,214,12,11])))
#
#		if randi() % 2 == 1:
#			qq += str(q_XMLParser.read())
#		if randi() % 2 == 1:
#			qq += str(q_XMLParser.seek( Autoload.get_randi()))
#		if randi() % 2 == 1:
#			q_XMLParser.skip_section()
