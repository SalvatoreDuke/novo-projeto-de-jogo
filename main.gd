extends Node2D

@onready var draw_button = $DrawButton
@onready var deck_manager = $DeckManager
@onready var card_container = $CardContainer

func _ready():
	draw_button.connect("pressed", Callable(self, "_on_draw_button_pressed"))
	

func _on_draw_button_pressed():
	var card_data = deck_manager.draw_card()
	if card_data:
		create_card_instance(card_data)
	else:
		print("O baralho está vazio!")



func create_card_instance(card_data):
	var card_scene = preload("res://card.tscn").instantiate()
	card_scene.card_texture = card_data["texture"]
	card_scene.card_value = card_data["value"]
	
	# Reduz o tamanho da carta antes de adicionar ao GridContainer
	card_scene.scale = Vector2(0.002, 0.002)  # Ajuste conforme necessário (50% do tamanho original)
	
	card_container.add_child(card_scene)
