extends "res://room_script.gd"

enum COLORS {R, B, Y}

@export var unlock_color : COLORS

@export var chasm_ident : String

signal bridge_enable(id)

func _ready():
	if Globals.chasms[chasm_ident] == true:
		print("chasm state loaded")
		$Chasm.queue_free()
		bridge_enable.emit(chasm_ident)

func _process(delta):
	pass

func _on_internal_area_body_entered(body):
	if body.is_in_group("Player"):
		if body.current_hg_color == unlock_color and Globals.chasms[chasm_ident] == false:
			Globals.chasms[chasm_ident] = true
			print("Chasm unlocked")
			if has_node("Chasm"):
				$Chasm.queue_free()
			bridge_enable.emit(chasm_ident)
			#var tween = get_tree().create_tween()
			#tween.tween_property($Icon, "modulate", Color.WHITE, 1.0)
			
