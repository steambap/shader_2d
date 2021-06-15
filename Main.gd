extends Node2D

const SUMMER_COLOR = [
	Vector3(0.18, 0.32, 0.04),
	Vector3(0.22, 0.36, 0.06),
	Vector3(0.42, 0.49, 0.15),
	Vector3(0.67, 0.73, 0.38),
	Vector3(0.79, 0.8, 0.47),
	Vector3(0.91, 0.93, 0.71),
];

const AUTUMN_COLOR = [
	Vector3(0.32, 0.28, 0.04),
	Vector3(0.42, 0.36, 0.06),
	Vector3(0.52, 0.49, 0.15),
	Vector3(0.73, 0.67, 0.38),
	Vector3(0.8, 0.78, 0.47),
	Vector3(0.93, 0.9, 0.71),
];

const WINTER_COLOR = [
	Vector3(0.28, 0.28, 0.32),
	Vector3(0.32, 0.32, 0.36),
	Vector3(0.42, 0.42, 0.49),
	Vector3(0.66, 0.66, 0.73),
	Vector3(0.77, 0.77, 0.8),
	Vector3(0.9, 0.9, 0.93),
];

const SPRING_COLOR = [
	Vector3(0.32, 0.26, 0.28),
	Vector3(0.37, 0.27, 0.29),
	Vector3(0.49, 0.4, 0.42),
	Vector3(0.73, 0.56, 0.66),
	Vector3(0.8, 0.57, 0.77),
	Vector3(0.93, 0.71, 0.91),
];

func _ready():
	set_spring()

func set_spring():
	$Ground.material.set_shader_param("color1", SPRING_COLOR[0])
	$Ground.material.set_shader_param("color2", SPRING_COLOR[1])
	$Ground.material.set_shader_param("color3", SPRING_COLOR[2])
	$Ground.material.set_shader_param("color4", SPRING_COLOR[3])
	$Ground.material.set_shader_param("color5", SPRING_COLOR[4])
	$Ground.material.set_shader_param("color6", SPRING_COLOR[5])

func set_winter():
	$Ground.material.set_shader_param("color1", WINTER_COLOR[0])
	$Ground.material.set_shader_param("color2", WINTER_COLOR[1])
	$Ground.material.set_shader_param("color3", WINTER_COLOR[2])
	$Ground.material.set_shader_param("color4", WINTER_COLOR[3])
	$Ground.material.set_shader_param("color5", WINTER_COLOR[4])
	$Ground.material.set_shader_param("color6", WINTER_COLOR[5])

func set_autumn():
	$Ground.material.set_shader_param("color1", AUTUMN_COLOR[0])
	$Ground.material.set_shader_param("color2", AUTUMN_COLOR[1])
	$Ground.material.set_shader_param("color3", AUTUMN_COLOR[2])
	$Ground.material.set_shader_param("color4", AUTUMN_COLOR[3])
	$Ground.material.set_shader_param("color5", AUTUMN_COLOR[4])
	$Ground.material.set_shader_param("color6", AUTUMN_COLOR[5])

func set_summer():
	$Ground.material.set_shader_param("color1", SUMMER_COLOR[0])
	$Ground.material.set_shader_param("color2", SUMMER_COLOR[1])
	$Ground.material.set_shader_param("color3", SUMMER_COLOR[2])
	$Ground.material.set_shader_param("color4", SUMMER_COLOR[3])
	$Ground.material.set_shader_param("color5", SUMMER_COLOR[4])
	$Ground.material.set_shader_param("color6", SUMMER_COLOR[5])


func _on_Spring_pressed():
	set_spring()


func _on_Winter_pressed():
	set_winter()


func _on_Autumn_pressed():
	set_autumn()


func _on_Summer_pressed():
	set_summer()
