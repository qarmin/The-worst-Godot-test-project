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
#
#		var q_ClassDB : ClassDB = ClassDB.new()
#
#		#Autoload.qq = str(q_ClassDB.can_instance(Autoload.get_string()))
#
#		Autoload.qq = str(q_ClassDB.class_exists(Autoload.get_string()))
#		#Autoload.qq = str(q_ClassDB.class_get_category(Autoload.get_string()))
#		#Autoload.qq = str(q_ClassDB.class_get_integer_constant(Autoload.get_string(), Autoload.get_string()))
#		Autoload.qq = str(q_ClassDB.class_get_integer_constant_list(Autoload.get_string(),Autoload.get_bool()))
#		Autoload.qq = str(q_ClassDB.class_get_method_list(Autoload.get_string(), Autoload.get_bool()))
#		Autoload.qq = str(q_ClassDB.class_get_property(self,Autoload.get_string()))
#		Autoload.qq = str(q_ClassDB.class_get_property_list(Autoload.get_string(), Autoload.get_bool()))
#		Autoload.qq = str(q_ClassDB.class_get_signal(Autoload.get_string(), Autoload.get_string()))
#		#Autoload.qq = str(q_ClassDB.class_get_signal_list(Autoload.get_string(), Autoload.get_bool()))
#		Autoload.qq = str(q_ClassDB.class_has_integer_constant(Autoload.get_string(),Autoload.get_string()))
#		Autoload.qq = str(q_ClassDB.class_has_method(Autoload.get_string(),Autoload.get_string(), Autoload.get_bool()))
#		Autoload.qq = str(q_ClassDB.class_has_signal(Autoload.get_string(), Autoload.get_string()))
#		Autoload.qq = str(q_ClassDB.class_set_property(self,Autoload.get_string(), String(Autoload.get_string())))
#
#		Autoload.qq = str(q_ClassDB.get_class_list())
#		Autoload.qq = str(q_ClassDB.get_inheriters_from_class(Autoload.get_string()))
#		#Autoload.qq = str(q_ClassDB.get_parent_class(Autoload.get_string()))
#
#		#Autoload.qq = str(q_ClassDB.instance(Autoload.get_string()))
#
#		#Autoload.qq = str(q_ClassDB.is_class_enabled(Autoload.get_string()))
#		Autoload.qq = str(q_ClassDB.is_parent_class(Autoload.get_string(),Autoload.get_string()))
#
