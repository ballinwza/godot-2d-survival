extends Node

var current_experience = 0

func _ready():
	GameEvent.experience_vial_collected.connect(on_experience_vial_collected)

func increment_experienece(number: float):
	current_experience += number
	print(current_experience)


func on_experience_vial_collected(number:float):
	increment_experienece(number)
