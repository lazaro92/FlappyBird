#pragma once

#include <SFML/Graphics/Text.hpp>

#include "DEFINITIONS.hpp"
#include "Game.hpp"

namespace Sonar
{
	class HUD
	{
	public:
		HUD(GameDataRef);

		void Draw();
		void UpdateScore(int score);

	private:
		GameDataRef _data;
		sf::Text _scoreText;
	};
}
