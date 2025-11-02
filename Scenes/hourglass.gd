extends Area2D

enum COLORS {R, B, Y}

@export var item_color : COLORS

# Called when the node enters the scene tree for the first time.
func _ready():
	if item_color == COLORS.R:
		modulate = Color.hex(0xff6772ff)
	if item_color == COLORS.B:
		modulate = Color.hex(0x54a3ffff)
	if item_color == COLORS.Y:
		modulate = Color.hex(0xfff660ff)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	if body.is_in_group("Player"):
		body.hg_pickup(item_color)
		get_tree().call_group("hourglass", "queue_free")
