extends AnimatedSprite2D

var play_anim2: bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	play("SandDrainingStart")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if play_anim2 == false:
		play("SandDrainingStart")
	else:
		play("SandDraining")
	pass

func _on_animation_finished():
	if play_anim2 != true:
		play_anim2 == true
	else: 
		pass
	pass # Replace with function body.
