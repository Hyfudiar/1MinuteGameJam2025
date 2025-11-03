extends Node2D

enum COLORS {R, B, Y}

var time_to_brighten = 45.0

# Called when the node enters the scene tree for the first time.
func _ready():
	print(Globals.room_lights)
	print(Globals.chasms)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $Timer.time_left < time_to_brighten:
		$DirectionalLight2D.energy -= (1.25/(time_to_brighten * (1 / delta)))


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
