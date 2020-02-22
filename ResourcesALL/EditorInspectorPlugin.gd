extends Node2D

onready var counter : float = Autoload.get_rand_time()

#
#
#
func alt_process(delta) -> void:
	pass
#	counter -= delta
#
#
#
#	if counter <= 0:
#		counter = Autoload.get_rand_time()
#
#		var q_EditorInspectorPlugin : EditorInspectorPlugin = EditorInspectorPlugin.new()
#
#		q_EditorInspectorPlugin.can_handle( q_EditorInspectorPlugin )
#		q_EditorInspectorPlugin.parse_begin( q_EditorInspectorPlugin )
#		q_EditorInspectorPlugin.parse_category( q_EditorInspectorPlugin, Autoload.get_string())
#		q_EditorInspectorPlugin.parse_end()
#		q_EditorInspectorPlugin.parse_property( q_EditorInspectorPlugin, Autoload.get_int(), Autoload.get_string(), Autoload.get_int(), String(), Autoload.get_int())
#
#		q_EditorInspectorPlugin.add_custom_control( Control.new())
#		q_EditorInspectorPlugin.add_property_editor( Autoload.get_string(), Control.new())
#		q_EditorInspectorPlugin.add_property_editor_for_multiple_properties( Autoload.get_string(), Autoload.get_packedstringarray(), Control.new())
#
