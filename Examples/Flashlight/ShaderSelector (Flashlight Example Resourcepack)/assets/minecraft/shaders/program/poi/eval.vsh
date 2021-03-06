#version 110
attribute vec4 Position;

uniform mat4 ProjMat;
uniform vec2 InSize;
uniform vec2 OutSize;
uniform vec2 ScreenSize;

uniform sampler2D POISampler;

varying vec2 texCoord;
varying vec2 oneTexel;

void main(){
    float poi = texture2D(POISampler,vec2(0.0,0.0)).a;
    vec4 outPos = ProjMat * vec4(Position.xy, 0.0, 1.0);
    gl_Position = vec4(outPos.xy, 0.2, 1.0);
    texCoord = Position.xy / OutSize;
    oneTexel = 1.0 / InSize;
}