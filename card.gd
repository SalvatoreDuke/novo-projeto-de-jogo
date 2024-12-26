extends Node

@export var card_scene: PackedScene  # Cena `Card.tscn` para instanciar cartas
@export var card_textures: Array[Texture]  # Array de texturas das cartas
@export var card_values: Array[int]  # Valores das cartas

var deck: Array = []  # Lista que representa o baralho

func create_deck():
	deck.clear()
	for i in range(card_textures.size()):
		var card_instance = card_scene.instantiate()  # Cria uma nova carta
		card_instance.card_texture = card_textures[i]
		card_instance.card_value = card_values[i]
		deck.append(card_instance)  # Adiciona a carta ao baralho
	shuffle_deck()  # Opcional: embaralha as cartas

func shuffle_deck():
	deck.shuffle()  # Embaralha o array de cartas

func draw_card():
	if deck.size() > 0:
		return deck.pop_back()  # Remove e retorna a última carta
	else:
		print("O baralho está vazio!")
		return null
