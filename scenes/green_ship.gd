extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if position.y < 0 or position.y > 620:
		#get_tree().reload_current_scene()
		SceneTransition.reload_scene()


func _on_area_2d_body_entered(body: Node2D) -> void:
	if (body.name == "GreenShip"):
		print("Reached objective!")
		SceneTransition.load_scene("res://scenes/exit.tscn")


func meteor_contacted(body: Node2D) -> void:
	if (body.name == "GreenShip"):
		print("You Died")
		#get_tree().reload_current_scene()
		SceneTransition.reload_scene()
