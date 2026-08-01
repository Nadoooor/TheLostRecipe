extends Node2D

@export var customer_scene : PackedScene
@export var customer_sprites : Array[Texture2D]
var spawn_postion  = Vector2(-574,180)
var counter_position = Vector2(466,180)

func _on_timer_timeout() -> void:
	if customer_sprites.is_empty():
		return
		
	var new_customer = customer_scene.instantiate()
	get_tree().current_scene.add_child(new_customer) 
	
	var random_look = customer_sprites.pick_random()
	new_customer.setup_customer(spawn_postion, counter_position, random_look) 
	new_customer.ordered.connect(_on_customer_ordered) 
func _on_customer_ordered(order_name : String ) ->void :
	print("order done")
	print(counter_position)
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
