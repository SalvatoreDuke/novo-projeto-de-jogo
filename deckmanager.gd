extends Node

# Referência para a cena "card.tscn"
@export var card_scene: PackedScene

# Lista para armazenar as instâncias das cartas
var deck = []

# Configuração inicial
func _ready():
    create_deck()
    shuffle_deck()
    print("Deck criado com", deck.size(), "cartas!")

# Cria o deck a partir das texturas e valores configurados em "card.tscn"
func create_deck():
    deck.clear()
    if card_scene:
        var card_resource = card_scene.instance()  # Instancia um exemplo da cena de carta
        var textures = card_resource.card_textures  # Obtém as texturas
        var values = card_resource.card_values      # Obtém os valores
        
        for i in range(textures.size()):
            var card_instance = card_scene.instance()
            card_instance.card_texture = textures[i]
            card_instance.card_value = values[i]
            deck.append(card_instance)
    else:
        print("Erro: Nenhuma cena de carta foi configurada.")

# Embaralha o deck
func shuffle_deck():
    deck.shuffle()

# Sorteia uma carta do deck
func draw_card():
    if deck.size() > 0:
        return deck.pop_back()
    else:
        print("O baralho está vazio!")
        return null
