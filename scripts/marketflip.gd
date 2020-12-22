extends Button
signal BuyInvestment
func _pressed():
	print("pressed")
	if KrCounter.KRCount >= 1:
		KrCounter.KRCount - 1
