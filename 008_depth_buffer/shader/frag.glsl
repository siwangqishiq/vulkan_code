#version 450

layout(location = 0) in vec3 aColor;
layout(location = 1) in vec2 aUv;

layout(binding = 1) uniform sampler2D texSampler;

layout(location = 0) out vec4 outColor;

void main(){
    vec3 texColor = texture(texSampler , aUv).rgb;
    outColor = vec4(texColor, 1.0f);
}
