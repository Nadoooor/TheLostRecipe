extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("Food"):
		texture = load("res://assets/Pot_Full.png")
		


		


func _on_area_2d_area_exited(area: Area2D) -> void:
	if area.is_in_group("Food"):
		texture = load("res://assets/Pot.png")
