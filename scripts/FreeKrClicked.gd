extends TextureButton
signal button_pressed
var KR = 0
func _pressed():
	emit_signal("button_pressed")
	print("buttonKR:",KrCounter.KRCount)

