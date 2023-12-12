shader_type canvas_item;
uniform sampler2D diffuse;
uniform float amp = 0.1;
uniform vec4 tint_color = vec4(0, 0.48,0.6, 1);

void fragment() {
	vec4 tex_color = texture(TEXTURE, UV);
	vec2 p = UV + (vec2(.5)-texture(diffuse, UV*0.3+vec2(TIME*0.005, TIME*0.0025)).xy) *amp +
        (vec2(.5)-texture(diffuse, UV*0.3-vec2(-TIME*0.0005, TIME*0.00125)).xy)*amp;
	vec4 frag_color = mix(texture(diffuse, fract(p)), tint_color, 0.9);
	COLOR = vec4(frag_color.rgb, tex_color.a);
}
