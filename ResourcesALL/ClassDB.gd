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
#
#		var q_ClassDB : ClassDB = ClassDB.new()
#
#		#qq += str(q_ClassDB.can_instance("String"))
#
#		qq += str(q_ClassDB.class_exists("String"))
#		#qq += str(q_ClassDB.class_get_category("String"))
#		#qq += str(q_ClassDB.class_get_integer_constant("String", "String"))
#		qq += str(q_ClassDB.class_get_integer_constant_list("String",bool(randi()%2)))
#		qq += str(q_ClassDB.class_get_method_list("String", bool(randi()%2)))
#		qq += str(q_ClassDB.class_get_property(self,"String"))
#		qq += str(q_ClassDB.class_get_property_list("String", bool(randi()%2)))
#		qq += str(q_ClassDB.class_get_signal("String", "String"))
#		#qq += str(q_ClassDB.class_get_signal_list("String", bool(randi()%2)))
#		qq += str(q_ClassDB.class_has_integer_constant("String","String"))
#		qq += str(q_ClassDB.class_has_method("String","String", bool(randi()%2)))
#		qq += str(q_ClassDB.class_has_signal("String", "String"))
#		qq += str(q_ClassDB.class_set_property(self,"String", String("asf")))
#
#		qq += str(q_ClassDB.get_class_list())
#		qq += str(q_ClassDB.get_inheriters_from_class("String"))
#		#qq += str(q_ClassDB.get_parent_class("String"))
#
#		#qq += str(q_ClassDB.instance("String"))
#
#		#qq += str(q_ClassDB.is_class_enabled("String"))
#		qq += str(q_ClassDB.is_parent_class("String","String"))
#
