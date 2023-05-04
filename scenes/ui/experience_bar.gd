extends CanvasLayer

@export var experience_bar : Node
@onready var progress_bar = $MarginContainer/ProgressBar

func _ready():
	experience_bar.experience_updated.connect(on_experience_update)
	
	
func on_experience_update(current_experience: float, target_experience: float):
	var experience = current_experience/target_experience
	progress_bar.value = experience
