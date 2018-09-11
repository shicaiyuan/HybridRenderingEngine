#version 450 core
layout (location = 0) in vec3 aPos; // the position variable has attribute position 0
layout (location = 0) in vec3 aColor;

out vec3 vertexColor; // specify a color output to the fragment shader

uniform mat4 MVP;

void main()
{
    gl_Position = MVP*vec4(aPos, 1.0); // see how we directly give a vec3 to vec4's constructor
    vertexColor = aColor;
}