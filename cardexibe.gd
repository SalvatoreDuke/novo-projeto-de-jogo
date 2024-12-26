func add_card_to_container(card):
	# Adiciona a carta ao contêiner
	$CardContainer.add_child(card)
	card.position = Vector2(0, 0)  # Ajuste a posição da carta
