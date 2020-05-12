#pragma once

#include <memory>
#include "ecs/ecs.hpp"
#include "lazy.hpp"

///
/// A component for meshes that holds data about the mesh
///
struct MeshComponent : ecs::IComponent
{
	lazy::graphics::Mesh mesh;
	std::vector<std::string> textures;
};