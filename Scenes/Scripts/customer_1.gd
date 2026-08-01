extends Node2D
signal ordered(recipe_name)
@export var target_position : Vector2
@export var move_duration: float = 1.5
var ing = ["Beef", "Egg", "Veggie"]
var order = []
#@onready var sprite = $Sprite2D
func setup_customer(spawn_pos : Vector2, target_pos : Vector2, visual_texture: Texture2D) -> void:
	global_position = spawn_pos
	target_position = target_pos
	var sprite_node = get_node("Sprite2D") as Sprite2D
	if sprite_node:
		sprite_node.texture = visual_texture 
	var tween = create_tween()
	tween.tween_property(self,'global_position',target_position,move_duration)
	tween.finished.connect(_on_reached_destination)
	# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	

# for the orders
func _on_reached_destination() -> void :
	var no_of_ings = randi_range(1,3)
	print(no_of_ings)
	var i = no_of_ings
	while i>0:
		var ind = randi_range(1, 3) - 1
		if order.count(ing[ind]) >= 1 :
			continue
		else:
			order.append(ing[ind])
			print(order)
		i-=1
		 
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
