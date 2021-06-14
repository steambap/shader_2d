shader_type canvas_item;

void fragment() {
	vec4 tex_color = texture(TEXTURE, UV);
	vec3 combine_color;
	if (tex_color.r < 0.25 && tex_color.g > 0.75 && tex_color.b > 0.75) {
		// keep border
		combine_color = tex_color.rgb;
	} else if (tex_color.r < 0.05) {
		combine_color = tex_color.rgb * 0.05 + vec3(0.18, 0.32, 0.04) * 0.95;
	} else if (tex_color.r < 0.1) {
		combine_color = tex_color.rgb * 0.1 + vec3(0.22, 0.36, 0.06) * 0.9;
	} else if (tex_color.r < 0.25) {
		combine_color = tex_color.rgb * 0.2 + vec3(0.42, 0.49, 0.15) * 0.8;
	} else if (tex_color.r < 0.5) {
		combine_color = tex_color.rgb * 0.5 + vec3(0.67, 0.73, 0.38) * 0.5;
	} else if (tex_color.r < 0.75) {
		combine_color = tex_color.rgb * 0.65 + vec3(0.79, 0.8, 0.47) * 0.35;
	} else {
		combine_color = tex_color.rgb * 0.8 + vec3(0.91, 0.93, 0.71) * 0.2;
	}
	COLOR = vec4(combine_color, tex_color.a);
}
