extends Sprite2D

var draging = false
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if draging:
		global_position = get_global_mouse_position()
		

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if not event.pressed:
			draging = false
			queue_free()
			
		
func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("poat"):
		texture = load("res://assets/NoodleCED.png")
	if area.is_in_group("Serving"):
		queue_free()
