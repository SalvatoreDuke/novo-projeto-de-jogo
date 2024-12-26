extends Node

@export var card_scene: PackedScene  # Referência à cena `Card.tscn`
@export var card_textures: Array[Texture]  # Array de texturas para as cartas
@export var card_values: Array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 11]  # Valores das cartas

var deck: Array = []

func create_deck():
	deck.clear()
	for i in range(card_textures.size()):
		var card_instance = card_scene.instantiate()  # Cria uma nova carta
		card_instance.card_texture = card_textures[i]
		card_instance.card_value = card_values[i]
		deck.append(card_instance)

func draw_card():
	if deck.size() > 0:
		return deck.pop_back()  # Remove e retorna a última carta
	else:
		print("O baralho está vazio!")
		return null
