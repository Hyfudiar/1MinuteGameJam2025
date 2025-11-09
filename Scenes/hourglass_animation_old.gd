extends Node2D

#enum colorSelect {setRed setBlue, setYellow}
#@export var colorChoose: colorSelect

var hourglass_ui_color: Color
var hourglass_red = Color.hex(0xff6772ff)
var hourglass_blue = Color.hex(0x54a3ffff)
var hourglass_yellow = Color.hex(0xfff660ff)

# Called when the node enters the scene tree for the first time.
func _ready():
	#set_visible(false)
	pass

func hourglass_fadeout():
	var fadeout = get_tree().create_tween()
	fadeout.tween_property($Node2D/hourglass_body, "self_modulate:a", 0.0, 0.3)
	
func hourglass_fadein():
	var fadein = get_tree().create_tween()
	fadein.tween_property($Node2D/hourglass_body, "self_modulate:a", 1.0, 0.3)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):	
	set_modulate(hourglass_ui_color)
	pass

func _on_hourglass_red_body_entered(body):
	#hourglass_ui_color = hourglass_red
	hourglass_ui_color = hourglass_red
	return hourglass_ui_color
	print("Hourglass Red Received")
	
	#set_modulate(Color.hex(0xff6772ff))
	#set_visible(true)
	#pass

func _on_hourglass_blue_body_entered(body):
	hourglass_ui_color = hourglass_blue
	return hourglass_ui_color
	print("Hourglass Blue Received")
	
	#set_modulate(Color.hex(0x54a3ffff))
	#set_visible(true)
	#pass	

func _on_hourglass_yellow_body_entered(body):
	hourglass_ui_color = hourglass_yellow
	return hourglass_ui_color
	print("Hourglass Yellow Received")


	#hourglass_ui_color = hourglass_yellow
	#set_modulate(Color.hex(0xfff660ff))
	#set_visible(true)
	#pass
	

func _on_timer_30_timeout():
	hourglass_fadeout()


func _on_timer_31_timeout():
	hourglass_fadein()


func _on_timer_60_timeout():
	hourglass_fadeout()
	

func _on_timer_61_timeout():
	hourglass_fadein()


func _on_timer_62_timeout():
	hourglass_fadeout()
	
	
func _on_timer_63_timeout():
	hourglass_fadein()
	


func _on_timer_80_timeout():
	hourglass_fadeout()
	

func _on_timer_81_timeout():
	hourglass_fadein()	

func _on_timer_82_timeout():
	hourglass_fadeout()


func _on_timer_83_timeout():
	hourglass_fadein()
	

func _on_timer_84_timeout():
	hourglass_fadeout()


func _on_timer_85_timeout():
	hourglass_fadein()


func _on_timer_89_timeout():
	hourglass_fadeout()
