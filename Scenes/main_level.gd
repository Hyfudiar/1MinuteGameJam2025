extends Node2D

enum COLORS {R, B, Y}

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	print("end of time")
	get_tree().change_scene_to_file("res://Scenes/end_screen.tscn")


func _on_player_start_hg():
	print("received signal")
	$Timer.start()



func _on_floppy_finished():
	$AUDIO/Floppy.play()





func _on_asst_amb_finished():
	$AUDIO/AsstAmb.play()
