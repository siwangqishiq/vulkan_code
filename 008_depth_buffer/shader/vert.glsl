#version 450

layout(location = 0) in vec3 pos;
layout(location = 1) in vec3 color;
layout(location = 2) in vec2 uv;

layout(location = 0) out vec3 aColor;
layout(location = 1) out vec2 aUv;

layout(binding = 0) uniform UniformBufferObject{
    mat4 model;
    mat4 view;
    mat4 proj;
} ubo;

void main(){
    gl_Position = ubo.proj * ubo.view * ubo.model * vec4(pos, 1.0f);
    aColor = color;
    aUv = uv;
}
