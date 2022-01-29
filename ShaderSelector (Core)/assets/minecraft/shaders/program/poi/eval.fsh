#version 150

uniform sampler2D DiffuseSampler;
uniform sampler2D DiffuseDepthSampler;
uniform sampler2D poiSampler;
uniform vec2 OutSize;

in vec2 texCoord;
in vec2 oneTexel;

out vec4 fragColor;


void main() {
    vec4 color  = texture2D(DiffuseSampler, texCoord);
    vec4 poi = texture2D(poiSampler, vec2(0.0));
    vec4 overlay;
	fragColor = color;

	//GREEN CHANNEL HANDLER
    if(poi.g > 0.0 && poi.g < 1.0) {
    	fragColor.g += poi.g;
    }

    //BLUE CHANNEL HANDLER
    if(poi.b > 0.0 && poi.b < 1.0) {
    	fragColor.b += poi.b;
    }

    // Overlay the Overlay on top of other pixels, by default overlay has nothing.
    // Import an overlay sampler to set it.
    if(overlay.a > 0.0) {
        fragColor.rgb = mix(fragColor.rgb, overlay.rgb, overlay.a).rgb;
    }
}
