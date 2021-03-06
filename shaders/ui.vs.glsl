#version 450 core

layout (location = 0) in vec3 in_position;
layout (location = 2) in vec2 tex_coords;

uniform mat4 projectionMatrix;
uniform mat4 modelMatrix;

out vec2 TexCoords;

void main()
{
	gl_Position = projectionMatrix * modelMatrix * vec4(in_position.xy, 0.0f, 1.0f);
	TexCoords = tex_coords;
}
