#pragma once

#include <SFML/System/Clock.hpp>
#include <SFML/Graphics/Sprite.hpp>
#include <SFML/Window/Event.hpp>
#include "State.hpp"
#include "Game.hpp"

namespace Sonar
{
	class SplashState: public State 
	{
	public:
		SplashState(GameDataRef data);
		
		void Init();
		void HandleInput();
		void Update(float dt);
		void Draw(float dt);

	private:
		GameDataRef _data;
		sf::Clock _clock;
		sf::Sprite _background;
	};
}
