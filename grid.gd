extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func grid_fade():
	var timeout = get_tree().create_tween()
	timeout.tween_property($AnimatedSprite2D, "self_modulate:a", 0.3, 7.0)

func _on_timer_timeout():
	grid_fade()
