extends Node

@export var card_textures: Array[Texture2D]
@export var card_values: Array[int]

var deck = []

func _ready():
	create_deck()

func create_deck():
	deck.clear()
	for i in card_textures.size():
		deck.append({
			"texture": card_textures[i],
			"value": card_values[i]
		})

func draw_card():
	if deck.size() > 0:
		return deck.pop_back()
	else:
		return null
