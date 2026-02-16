extends CanvasLayer
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var color_rect: ColorRect = $ColorRect

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	color_rect.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func load_scene(target_scene: String):
	animation_player.play("fade")
	await animation_player.animation_finished
	get_tree().change_scene_to_file(target_scene)
	animation_player.play_backwards("fade")

func reload_scene():
	animation_player.play("fade")
	await animation_player.animation_finished
	get_tree().reload_current_scene()
	animation_player.play_backwards("fade")
