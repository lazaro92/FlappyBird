#pragma once

#include <SFML/Graphics/Sprite.hpp>
#include "Game.hpp"
#include <vector>
#include "DEFINITIONS.hpp"


namespace Sonar
{
	class Land
	{
	public:
		Land(GameDataRef data);

		void MoveLand(float dt);
		void DrawLand();

		const std::vector<sf::Sprite> &GetSprites() const;

	private:
		GameDataRef _data;

		std::vector<sf::Sprite> _landSprites;
	};
}
