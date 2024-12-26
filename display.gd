@onready var deck_manager = $DeckManager
@onready var card_display_area = $CardDisplayArea  # Nó onde as cartas serão exibidas

func _ready():
	deck_manager.create_deck()
	spawn_card()

func spawn_card():
	var card = deck_manager.draw_card()
	if card:
		card_display_area.add_child(card)  # Adiciona a carta à área de exibição
		card.position = Vector2(randf() * 200, randf() * 200)  # Ajuste a posição se necessário
