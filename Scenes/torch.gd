extends Node2D

signal light_on

var on = false
var torch_enabled = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if on:
		var new_brightness = $PointLight2D.energy + randf_range(-0.25, 0.25)
		new_brightness = clamp(new_brightness, 0.2, 4)
		$PointLight2D.energy = new_brightness

func _on_area_2d_body_entered(body):
	if body.is_in_group("Player") and torch_enabled:
		light_on.emit()
		turn_on()
		print("light on signal emitted")

func turn_on():
	if not on:
		$Light.play()
		$Burning.play()
		var tween = get_tree().create_tween()
		tween.tween_property($PointLight2D, "energy", 2, 2)
		tween.set_parallel()
		tween.tween_property($Burning, "volume_db", -6, 2)
		on = true
