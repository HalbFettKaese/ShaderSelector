#version 150

uniform sampler2D ItemEntitySampler;
uniform sampler2D ItemEntityDepthSampler;
uniform sampler2D poiSampler;
uniform vec2 OutSize;

in vec2 texCoord;
in vec2 oneTexel;

out vec4 fragColor;

float near = 0.1; 
float far  = 1000.0; 
  
float LinearizeDepth(float depth) {
    float z = depth * 2.0 - 1.0;
    return (near * far) / (far + near - z * (far - near));    
}

void main() {
    vec4 prevColor  = texture2D(poiSampler, vec2(0.0));
    vec4 color      = texture(ItemEntitySampler, vec2(0.5));
    float depth     = LinearizeDepth(texture2D( ItemEntityDepthSampler, vec2(0.5)).r);
    fragColor = prevColor;

    if(depth < 1.0) {
    	if(color.r == 1.0) {
            bool loadB = (color.g == 1.0);
            bool loadG = (color.b == 1.0);
            if(loadB) {
                fragColor.b = color.b;
            }
            if(loadG) {
                fragColor.g = color.g;
            }
            if(!loadB && !loadG) {
                fragColor = color;
            }
    	}
    }
}
