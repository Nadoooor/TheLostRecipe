extends Sprite2D

@export var item_to_spawn : PackedScene
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_ramin_box_area_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			print("raminpressed")
			var newNoodle = item_to_spawn.instantiate()
			get_parent().add_child(newNoodle)
			
			newNoodle.global_position = get_global_mouse_position()
			newNoodle.draging = true 
			
			
			
		
		
		
		
