extends Node2D

var q_XMLParser: XMLParser = XMLParser.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_XMLParser, true)


func nodeFunction(q_XMLParser: XMLParser, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_XMLParser = XMLParser.new()
	if randi() % 2 == 1:
		AutoResourcesReference.nodeFunction(q_XMLParser)

#LEAK
#	if randi() % 2 == 1:
#		q_XMLParser.get_attribute_count()
#	if randi() % 2 == 1:
#		q_XMLParser.get_attribute_name( Autoload.get_int())
#	if randi() % 2 == 1:
#		q_XMLParser.get_attribute_value( Autoload.get_int())
#	if randi() % 2 == 1:
#		q_XMLParser.get_current_line()
#	if randi() % 2 == 1:
#		q_XMLParser.get_named_attribute_value( Autoload.get_string())
#	if randi() % 2 == 1:
#		q_XMLParser.get_named_attribute_value_safe( Autoload.get_string())
#	if randi() % 2 == 1:
#		q_XMLParser.get_node_data()
#	if randi() % 2 == 1:
#		q_XMLParser.get_node_name()
#	if randi() % 2 == 1:
#		q_XMLParser.get_node_offset()
#	if randi() % 2 == 1:
#		q_XMLParser.get_node_type()
#
#	if randi() % 2 == 1:
#		q_XMLParser.has_attribute( Autoload.get_string())
#	if randi() % 2 == 1:
#		q_XMLParser.is_empty()
#
#	if randi() % 2 == 1:
#		q_XMLParser.open( Autoload.get_string())
#	if randi() % 2 == 1:
#		q_XMLParser.open_buffer( Autoload.get_packedbytearray())
#
#	if randi() % 2 == 1:
#		q_XMLParser.read()
#	if randi() % 2 == 1:
#		q_XMLParser.seek( Autoload.get_int())
#	if randi() % 2 == 1:
#		q_XMLParser.skip_section()
