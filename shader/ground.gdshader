shader_type canvas_item;
uniform vec3 color1;
uniform vec3 color2;
uniform vec3 color3;
uniform vec3 color4;
uniform vec3 color5;
uniform vec3 color6;

void fragment() {
	vec4 tex_color = texture(TEXTURE, UV);
	vec3 combine_color;
	if (tex_color.r < 0.25 && tex_color.g > 0.75 && tex_color.b > 0.75) {
		// keep border
		combine_color = tex_color.rgb;
	} else if (tex_color.r < 0.05) {
		combine_color = mix(tex_color.rgb, color1, 0.95);
	} else if (tex_color.r < 0.1) {
		combine_color = mix(tex_color.rgb, color2, 0.9);
	} else if (tex_color.r < 0.25) {
		combine_color = mix(tex_color.rgb, color3, 0.75);
	} else if (tex_color.r < 0.5) {
		combine_color = mix(tex_color.rgb, color4, 0.5);
	} else if (tex_color.r < 0.75) {
		combine_color = mix(tex_color.rgb, color5, 0.35);
	} else {
		combine_color = mix(tex_color.rgb, color6, 0.2);
	}
	COLOR = vec4(combine_color, tex_color.a);
}
