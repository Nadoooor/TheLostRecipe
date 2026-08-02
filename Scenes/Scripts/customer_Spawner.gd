extends Node2D

@export var customer_scene : PackedScene
@export var customer_sprites : Array[Texture2D]
var spawn_postion  = Vector2(-574,180)
var counter_position = Vector2(-100,180)
var customers_lapse = 0
var rand = 0

func _on_timer_timeout() -> void:
	if customer_sprites.is_empty() or customers_lapse >= 3:
		return
		
	var new_customer = customer_scene.instantiate()
	get_tree().current_scene.add_child(new_customer) 
	
	var random_look = customer_sprites.pick_random()
	new_customer.setup_customer(spawn_postion, counter_position, random_look)
	print("order done")
	print(customers_lapse)
	print(counter_position)
	customers_lapse+=1
	counter_position-= Vector2(170,0)
	rand = randi_range(5, 20)
	print(rand)
	%guestcoming.wait_time = rand	
	print(%guestcoming.wait_time)
	%guestcoming.start()
	print(customers_lapse)
	
	
	
#func _on_customer_ordered(order_name : String ) ->void :



func _ready() -> void:
	rand = randi_range(5, 10)
	print(rand)
	%guestcoming.wait_time = rand	
	print(%guestcoming.wait_time)
	%guestcoming.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
