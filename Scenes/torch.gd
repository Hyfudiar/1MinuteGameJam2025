extends Node2D

signal light_on

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_area_2d_body_entered(body):
	if body.is_in_group("Player"):
		var tween = get_tree().create_tween()
		tween.tween_property($PointLight2D, "energy", 2, 2)
