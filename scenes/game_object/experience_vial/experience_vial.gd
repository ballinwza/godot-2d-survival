extends Node2D

var current_experience = 0

func _ready():
	$Area2D.area_entered.connect(on_area_entered)
	
	
func on_area_entered(other_area:Node2D):
	GameEvent.emit_experience_vial_collected(1)
	queue_free()
