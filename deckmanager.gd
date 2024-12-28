extends Node

@export var card_textures: Array[Texture2D] #puxa as texturas das cartas
@export var card_values: Array[int] #define o valor correspondente das cartas

var deck = [] #cria uma fila em array de cartas que será usada em tamanho 52

func _ready(): 
	create_deck()

func create_deck(): #função criada pra exportar as texturas e os valores
	deck.clear() 
	for i in card_textures.size():
		deck.append({
			"texture": card_textures[i],
			"value": card_values[i]
		})

func draw_card():
	if deck.size() > 0:
		return deck.pop_back() #retira o o primeiro da fila caso ainda tenha cards
	else:
		return null
