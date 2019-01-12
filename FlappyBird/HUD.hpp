#pragma once

#include <SFML\Graphics.hpp>

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