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
		if !Autoload.RANDI:
			pass
#		var q_EditorInspectorPlugin : EditorInspectorPlugin = EditorInspectorPlugin.new()
#
#		q_EditorInspectorPlugin.can_handle( self )
#		q_EditorInspectorPlugin.parse_begin( self )
#		q_EditorInspectorPlugin.parse_category( self, "Kategoria" )
#		q_EditorInspectorPlugin.parse_end()
#		q_EditorInspectorPlugin.parse_property( self, randi() % 100, "Kaczka", randi() % 20, String(), randi()%50 )
#
#		q_EditorInspectorPlugin.add_custom_control( Control.new() )
#		q_EditorInspectorPlugin.add_property_editor( "Wiadomość", Control.new() )
#		q_EditorInspectorPlugin.add_property_editor_for_multiple_properties( "Wiadomo", PoolStringArray(["qwr","saf"]), Control.new() )
#
#		if Autoload.WRONG_BUGS:
#			pass
