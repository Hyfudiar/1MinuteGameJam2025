extends "res://room_script.gd"

enum COLORS {R, B, Y}

@export var unlock_color : COLORS

@export var chasm_ident : String

func _ready():
	if Globals.chasms[chasm_ident] == true:
		$Chasm.queue_free()
		$Icon.modulate = Color.WHITE

func _process(delta):
	pass


func _on_internal_area_body_entered(body):
	if body.is_in_group("Player"):
		if body.current_hg_color == unlock_color:
			Globals.chasms[chasm_ident] = true
			$Chasm.queue_free()
			var tween = get_tree().create_tween()
			tween.tween_property($Icon, "modulate", Color.WHITE, 1.0)
			
