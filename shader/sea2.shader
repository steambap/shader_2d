shader_type canvas_item;

void fragment() {
	vec4 tex_color = texture(TEXTURE, UV);
	vec3 sea_color = vec3(0.64, 0.65, 0.58);
	COLOR = vec4(sea_color, tex_color.a);
}
