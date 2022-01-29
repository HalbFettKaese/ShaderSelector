#version 150

#moj_import <fog.glsl>

uniform sampler2D Sampler0;

uniform vec4 ColorModulator;
uniform float FogStart;
uniform float FogEnd;
uniform vec4 FogColor;

in float vertexDistance;
in vec4 vertexColor;
in vec2 texCoord0;
in vec2 texCoord1;
in vec4 normal;

out vec4 fragColor;

void main() {
    vec4 color = texture(Sampler0, texCoord0);
    if (color.a < 0.1) {
        discard;
    }

    if(color.r == 1.0 && color.a == 1.0) {
    	fragColor = vec4(1.0,color.g,color.b,1.0);
    } else {
    	fragColor = linear_fog(color, vertexDistance, FogStart, FogEnd, FogColor) * vertexColor * ColorModulator;
    }
}
