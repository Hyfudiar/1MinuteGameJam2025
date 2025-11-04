extends AnimatedSprite2D

var switch_directions: bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if switch_directions == false:
		play("default")
	else:
		play_backwards("default")
	pass



func _on_animation_finished():
	if switch_directions == false:
		switch_directions = true
		return switch_directions
	else:
		switch_directions = false
		return switch_directions
	pass # Replace with function body.
