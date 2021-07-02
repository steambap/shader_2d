shader_type canvas_item;

void fragment() {
	vec4 tex_color = texture(TEXTURE, UV);
	vec3 combine_color;
	if (tex_color.r < 0.25 && tex_color.g > 0.75 && tex_color.b > 0.75) {
		// keep border
		combine_color = vec3(0.57, 0.52, 0.42);
	} else {
		combine_color = vec3(0.92, 0.87, 0.68);
	}
	COLOR = vec4(combine_color, tex_color.a);
}
