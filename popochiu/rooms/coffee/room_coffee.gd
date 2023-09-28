@tool
extends PopochiuRoom

const Data := preload('room_coffee_state.gd')

var state: Data = load('res://popochiu/rooms/coffee/room_coffee.tres')


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ GODOT ░░░░
# TODO: Overwrite Godot's methods


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ VIRTUAL ░░░░
# What happens when Popochiu loads the room. At this point the room is in the
# tree but it is not visible
func _on_room_entered() -> void:
	pass


# What happens when the room changing transition finishes. At this point the room
# is visible.
func _on_room_transition_finished() -> void:
	E.queue([
		"....",
		"Fulana: ¡Hola! ¿Cómo estás?",
		"Melana: Hola, estoy un poco preocupado. Tengo un problema familiar y no sé qué hacer",
		"Fulana: Oh, lo siento por escuchar eso. ¿Quieres hablar al respecto?",
		"Melana: Sí, supongo que necesito desahogarme. Mi hermana y yo hemos estado discutiendo mucho últimamente. Parece que no podemos ponernos de acuerdo en nada y cada conversación termina en una pelea",
		"Fulana: Entiendo lo difícil que puede ser eso. ¿Tienen alguna idea de por qué están teniendo tantos desacuerdos?",
		"Melana: Creo que parte de ello es que tenemos diferentes puntos de vista sobre cómo cuidar a nuestros padres mayores. Yo pienso que deberíamos contratar a alguien para ayudar, pero ella quiere encargarse personalmente de todo",
		"Fulana: Eso suena como un desafío complicado. Es natural tener diferentes opiniones, especialmente en situaciones familiares. ¿Han intentado hablar tranquilamente sobre sus preocupaciones y encontrar algún terreno común?",
		"Melana: Lo intentamos, pero parece que siempre terminamos defendiendo nuestras propias ideas en lugar de escuchar. Estoy preocupado de que esto esté afectando nuestra relación",
		"Fulana: Es comprensible que te preocupes por tu relación con tu hermana. Quizás podrían acordar tener una conversación calmada sin tratar de convencerse mutuamente, sino realmente intentando entender las preocupaciones del otro",
		"Melana: Esa podría ser una buena idea. No quiero perder la relación con mi hermana por esto",
		"Fulana: Definitivamente, la familia es importante. A veces, es útil recordar que ambos quieren lo mejor para sus padres y que encontrar un compromiso podría ser la solución",
		"Melana: Tienes razón. Intentaré hablar con ella nuevamente y esta vez realmente escuchar lo que tiene que decir",
		"Fulana: Eso suena como un paso positivo. Estoy aquí para apoyarte, si necesitas hablar más",
		"Melana: Gracias, amigo. Significa mucho para mí",
	])


# What happens before Popochiu unloads the room.
# At this point, the screen is black, processing is disabled and all characters
# have been removed from the $Characters node.
func _on_room_exited() -> void:
	pass


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ PUBLIC ░░░░
# You could put public functions here


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ PRIVATE ░░░░
# You could put private functions here
