#version 150

uniform sampler2D DiffuseSampler;
uniform sampler2D DiffuseDepthSampler;
uniform sampler2D poiSampler;
uniform sampler2D FlashlightSampler;
uniform float _FOV;
uniform vec2 OutSize;

in vec2 texCoord;
in vec2 oneTexel;

out vec4 fragColor;

float near = 0.1; 
float far  = 1000.0;
float LinearizeDepth(float depth) 
{
    float z = depth * 2.0 - 1.0;
    return (near * far) / (far + near - z * (far - near));    
}

// Flashlight Variables
const float exposure = 2.;
const float AOE = 15.;

void main() {
    vec4 color  = texture2D(DiffuseSampler, texCoord);
    vec4 poi = texture2D(poiSampler, vec2(0.0));
    vec4 overlay;
	fragColor = color;

    // GREEN Channel Controls Flashlight State
    if(poi.g == 254.0/255.0) {
    	float depth = LinearizeDepth(texture2D(DiffuseDepthSampler, texCoord).r);
        float distance = length(vec3(1., (2.*texCoord - 1.) * vec2(OutSize.x/OutSize.y,1.) * tan(radians(_FOV / 2.))) * depth);

        vec2 uv = texCoord;
        float d = sqrt(pow((uv.x - 0.5),2.0) + pow((uv.y - 0.5),2.0));
        d = exp(-(d * AOE)) * exposure / (distance*0.15);
        fragColor = vec4(texture2D(DiffuseSampler,texCoord).rgb*clamp(1.0 + d,0.1,10.0),1.0);
    }
    
    // BLUE Channel Controls Battery Level
    float battery = 0.0;
    if(poi.b == 254.0/255.0) {
        battery = 1.0;
    } else if(poi.b == 253.0/255.0) {
        battery = 2.0;
    } else if(poi.b == 252.0/255.0) {
        battery = 3.0;
    } else if(poi.b == 251.0/255.0) {
        battery = 4.0;
    }
    // Overlay Coordinates Based on Battery Level
    overlay = texture2D(FlashlightSampler, vec2(texCoord.x, battery/5.0+(1.0-texCoord.y)/5.0 ));

    // Overlay the Overlay on top of other pixels
    if(overlay.a > 0.0) {
        fragColor.rgb = mix(fragColor.rgb, overlay.rgb, overlay.a).rgb;
    }
}
