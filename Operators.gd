extends Node2D

class_name Operators

onready var counter : float = Autoload.get_rand_time()

func _ready() -> void:
	if !is_visible():
		queue_free()
			
func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()
		
		var arr : Array = Autoload.get_array()
		var dict : Dictionary = Autoload.get_dictionary()
		var number = Autoload.get_int()
		var number_not_zero = Autoload.get_int()
		var strin = Autoload.get_string()
		
		if number_not_zero == 0:
			number_not_zero = 1
		52 % -25
		arr[Autoload.get_int() % arr.size()]
		if dict.has(strin):
			dict[strin]
		self.counter = self.counter
		number_not_zero is Node2D
		~Autoload.get_int()
		-Autoload.get_int()
		Autoload.get_int() * Autoload.get_int()
		Autoload.get_int() / (number_not_zero)
		Autoload.get_int() % (number_not_zero)
		Autoload.get_int() + Autoload.get_int()
		Autoload.get_int() - Autoload.get_int()
		Autoload.get_int() >> int(max(min(Autoload.get_int(),0),63))
		Autoload.get_int() << int(max(min(Autoload.get_int(),0),63))
		Autoload.get_int() & Autoload.get_int()
		Autoload.get_int() ^ Autoload.get_int()
		Autoload.get_int() | Autoload.get_int()
		Autoload.get_int() < Autoload.get_int()
		Autoload.get_int() > Autoload.get_int()
		Autoload.get_int() == Autoload.get_int()
		Autoload.get_int() != Autoload.get_int()
		Autoload.get_int() >= Autoload.get_int()
		Autoload.get_int() <= Autoload.get_int()
		Autoload.get_int() in Autoload.get_array()
		!Autoload.get_int()
		not Autoload.get_int()
		Autoload.get_int() and Autoload.get_int()
		Autoload.get_int() && Autoload.get_int()
		Autoload.get_int() or Autoload.get_int()
		Autoload.get_int() || Autoload.get_int()
		
		if Autoload.get_int():
			pass
		else:  
			pass
		
		number = Autoload.get_int()
		number += Autoload.get_int()
		number -= Autoload.get_int()
		number *= Autoload.get_int()
		number /= Autoload.get_int()
		number %= Autoload.get_int()
		number &= Autoload.get_int()
		number |= Autoload.get_int()
		
		1234567890
		0x0123456789ABCDEF
		0x123456789ABCDEF
		0b101010101010101010101
		0b010101010101010101010
		3.242
		25.1e-125
		125e+24
		"Chrabąszcz"
		"""
		MULTILINIONOWOŚĆ
		"""
		@"."
		$"."
		
		#Comment
