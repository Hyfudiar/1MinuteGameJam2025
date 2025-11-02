extends "res://room_script.gd"

enum COLORS {R, B, Y}

@export var unlock_color : COLORS

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_internal_area_body_entered(body):
	if body.is_in_group("Player"):
		if body.current_hg_color == unlock_color:
			$Chasm.queue_free()
			var tween = get_tree().create_tween()
			tween.tween_property($Icon, "modulate", Color.WHITE, 1.0)
			
