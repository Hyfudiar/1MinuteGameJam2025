extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func main_scene_loaded():
	var tween = get_tree().create_tween()
	tween.tween_property($Floppy, "volume_db", 0.5, 4)
	tween.set_parallel()
	tween.tween_property($Drone, "volume_db", 10.5, 4)
	tween.tween_property($AsstAmb, "volume_db", 9, 4)

func _on_floppy_finished():
	$Floppy.play()

func _on_asst_amb_finished():
	$AsstAmb.play()
