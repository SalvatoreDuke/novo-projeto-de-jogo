extends Node

# Referências aos nós principais
@onready var deck_manager = $DeckManager
@onready var card_container = $CardContainer
@onready var draw_button = $DrawButton

func _ready():
	draw_button.connect("pressed", self, "_on_draw_button_pressed")

func _on_draw_button_pressed():
	var drawn_card = deck_manager.draw_card()
	if drawn_card:
		add_card_to_container(drawn_card)
	else:
		print("O baralho está vazio!")

func add_card_to_container(card):
	card_container.add_child(card)
	card.position = Vector2(20 * card_container.get_child_count(), 0)  # Ajusta posição


func _on_drawbutton_pressed() -> void:
	pass # Replace with function body.
