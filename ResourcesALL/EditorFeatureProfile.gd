extends Node2D

onready var counter : float = Autoload.get_rand_time()

#
#
#
#func alt_process(delta) -> void:
#	counter -= delta
#
#
#
#	if counter <= 0:
#		counter = Autoload.get_rand_time()
#
#		var q_EditorFeatureProfile : EditorFeatureProfile = EditorFeatureProfile.new()
#
#		q_EditorFeatureProfile.get_feature_name( Autoload.get_int()) #Feature
#
#		q_EditorFeatureProfile.is_class_disabled( Autoload.get_string())
#		q_EditorFeatureProfile.is_class_editor_disabled( Autoload.get_string())
#		q_EditorFeatureProfile.is_class_property_disabled( Autoload.get_string(), Autoload.get_string())
#		q_EditorFeatureProfile.is_feature_disabled( Autoload.get_int())#Feature
#
#		q_EditorFeatureProfile.load_from_file( Autoload.get_string())
#		q_EditorFeatureProfile.save_to_file( Autoload.get_string())
#
#		q_EditorFeatureProfile.set_disable_class( Autoload.get_string(), Autoload.get_bool())
#		q_EditorFeatureProfile.set_disable_class_editor( Autoload.get_string(), Autoload.get_bool())
#		q_EditorFeatureProfile.set_disable_class_property( Autoload.get_string(), Autoload.get_string(), Autoload.get_bool())
#		q_EditorFeatureProfile.set_disable_feature( Autoload.get_int(), Autoload.get_bool())#Feature
#
