extends Sprite2D

var grapping = false
var onplate = []
var initpos: Vector2
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	initpos = global_position


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if grapping:
		self.global_position = get_global_mouse_position()


func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			print("leftpressed")
			self.global_position = get_global_mouse_position()
			grapping = true
			
			
func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if not event.pressed:
			grapping= false
			
		


func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("Food"):
		texture = load("res://assets/Serving_Full.png")
	
	
	if area.is_in_group("customers"):
		print("Checking Order...")
		reset()

func reset() -> void:
	visible= false
	texture = load("res://assets/Serving.png")
	global_position = initpos
	visible = true
		
		
		
