extends Label
var KRCount = 0
var Auto1Count = 0
var Auto1Price = 2
func _on_TextureButton_button_pressed():
	KRCount += 1
	text = var2str(KRCount)
	print("counter kr:",KRCount)

func _on_auto_BuyAuto1():
	if KRCount >= Auto1Price:
		Auto1Count += 1
		KRCount -= Auto1Price
		Auto1Price = Auto1Price * 3
		text = var2str(KRCount)
		print("Auto1Price: ",Auto1Price)
		print("Auto1Count: ",Auto1Count)

func _ready():
	while KRCount < 99999999:
		yield(get_tree().create_timer(1.0), "timeout")
		KRCount += 1 * Auto1Count
		print("KRCount on tick: ",KRCount)
		text = var2str(KRCount)
