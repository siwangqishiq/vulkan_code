#version 450

layout(location = 0) in vec2 pos;
layout(location = 1) in vec3 color;

layout(location = 0) out vec3 aColor;

layout(binding = 0) uniform UniformBufferObject{
    mat4 model;
    mat4 view;
    mat4 proj;
} ubo;

void main(){
    gl_Position = ubo.proj * ubo.view * ubo.model * vec4(pos, 0.0f , 1.0f);
    aColor = color;
}
