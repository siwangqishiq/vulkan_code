#version 450

layout(location = 0) in vec3 aColor;
layout(location = 1) in vec2 aUv;

layout(binding = 1) uniform sampler2D texSampler;

layout(location = 0) out vec4 outColor;

void main(){
    // outColor = vec4(aUv, 0.0f, 1.0f);
    // outColor = texture(texSampler , aUv);
    vec3 texColor = texture(texSampler , aUv).rgb;
    outColor = vec4(aColor * texColor, 1.0f);
}
