extends Node2D

enum COLORS {R, B, Y}

var time_to_brighten = 30.0
var timer_running = false


@onready var panner = AudioServer.get_bus_effect(3, 0)

# Called when the node enters the scene tree for the first time.
func _ready():
	$CanvasLayer/TextureRect/hourglass_animation.start_timers()
	#print(Globals.room_lights)
	#print(Globals.chasms)
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if timer_running and $Timer.time_left < time_to_brighten:
		$DirectionalLight2D.energy -= (0.45/(time_to_brighten * (1 / delta)))


func _on_timer_timeout():
	print("end of time")
	get_tree().change_scene_to_file("res://Scenes/end_screen.tscn")


func _on_player_start_hg():
	print("received signal")
	$Timer.start()
	timer_running = true
	$AUDIO/Sand.play()
	$AUDIO/Sand_Drone.play()
	var tween = get_tree().create_tween()
	tween.set_trans(Tween.TRANS_QUART)
	tween.set_ease(Tween.EASE_IN)
	tween.tween_property($AUDIO/Sand, "volume_db", -30, 90)
	tween.set_parallel()
	tween.set_ease(Tween.EASE_OUT)
	tween.tween_property($AUDIO/Sand_Drone, "volume_db", -5, 90)

func _on_floppy_finished():
	$AUDIO/Floppy.play()


func _on_asst_amb_finished():
	$AUDIO/AsstAmb.play()


func _on_crunches_finished():
	panner.pan = randf_range(-1, 1)
	$AUDIO/Crunches.play()


func _on_chasm_bridge_enable(id):
	var tween = get_tree().create_tween()
	if id == "L21":
		tween.tween_property($Bridges/R2_R20, "modulate", Color.WHITE, 1)
	elif id == "T13":
		tween.tween_property($Bridges/B2_T13, "modulate", Color.WHITE, 1)
	elif id == "R20":
		tween.tween_property($Bridges/R1_L21, "modulate", Color.WHITE, 1)
	elif id == "O22":
		tween.tween_property($Bridges/B1_O22, "modulate", Color.WHITE, 1)
	elif id == "U27":
		tween.tween_property($Bridges/Y2_Q18, "modulate", Color.WHITE, 1)
	elif id == "Q18":
		tween.tween_property($Bridges/Y1_U27, "modulate", Color.WHITE, 1)


func _on_end_portal_body_entered(body):
	if body.is_in_group("Player"):
		body.freeze()
		GlobalAudio.completion()
		await GlobalAudio.completion_finished
		get_tree().change_scene_to_file("res://Scenes/completion_screen.tscn")
