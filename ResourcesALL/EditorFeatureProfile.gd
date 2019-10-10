extends Node2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

#func _ready():
#	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#
#func _process(delta) -> void:
#	counter -= delta
#	var qq : String = ""
#	qq = qq
#
#	if counter <= 0:
#		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#		var q_EditorFeatureProfile : EditorFeatureProfile = EditorFeatureProfile.new()
#
#		q_EditorFeatureProfile.get_feature_name( randi() % EditorFeatureProfile.FEATURE_MAX ) #Feature
#
#		q_EditorFeatureProfile.is_class_disabled( "7D" )
#		q_EditorFeatureProfile.is_class_editor_disabled( "7D" )
#		q_EditorFeatureProfile.is_class_property_disabled( "7D", "Kot" )
#		q_EditorFeatureProfile.is_feature_disabled( randi() % EditorFeatureProfile.FEATURE_MAX )#Feature
#
#		q_EditorFeatureProfile.load_from_file( "Pies" )
#		q_EditorFeatureProfile.save_to_file( "Pies" )
#
#		q_EditorFeatureProfile.set_disable_class( "7D", bool(randi()%2) )
#		q_EditorFeatureProfile.set_disable_class_editor( "7D", bool(randi()%2) )
#		q_EditorFeatureProfile.set_disable_class_property( "7D", "Mysz", bool(randi()%2) )
#		q_EditorFeatureProfile.set_disable_feature( randi() % EditorFeatureProfile.FEATURE_MAX, bool(randi()%2) )#Feature
#
