output: main.o AssetManager.o Bird.o Collision.o Flash.o Game.o GameOverState.o GameState.o HUD.o InputManager.o Land.o MainMenuState.o Pipe.o SplashState.o StateMachine.o
	g++ -g main.o AssetManager.o Bird.o Collision.o Flash.o Game.o GameOverState.o GameState.o HUD.o InputManager.o Land.o MainMenuState.o Pipe.o SplashState.o StateMachine.o -lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio -o output

main.o: src/main.cpp
	g++ -g -Wall -c src/main.cpp

AssetManager.o: src/AssetManager.cpp src/AssetManager.hpp
	g++ -g -Wall -c src/AssetManager.cpp

Bird.o: src/Bird.cpp src/Bird.hpp
	g++ -g -Wall -c src/Bird.cpp

Collision.o: src/Collision.cpp src/Collision.hpp
	g++ -g -Wall -c src/Collision.cpp

Flash.o: src/Flash.cpp src/Flash.hpp
	g++ -g -Wall -c src/Flash.cpp

Game.o: src/Game.cpp src/Game.hpp
	g++ -g -Wall -c src/Game.cpp

GameOverState.o: src/GameOverState.cpp src/GameOverState.hpp
	g++ -g -Wall -c src/GameOverState.cpp

GameState.o: src/GameState.cpp src/GameState.hpp
	g++ -g -Wall -c src/GameState.cpp

HUD.o: src/HUD.cpp src/HUD.hpp
	g++ -g -Wall -c src/HUD.cpp

InputManager.o: src/InputManager.cpp src/InputManager.hpp
	g++ -g -Wall -c src/InputManager.cpp

Land.o: src/Land.cpp src/Land.hpp
	g++ -g -Wall -c src/Land.cpp

MainMenuState.o: src/MainMenuState.cpp src/MainMenuState.hpp
	g++ -g -Wall -c src/MainMenuState.cpp

Pipe.o: src/Pipe.cpp src/Pipe.hpp
	g++ -g -Wall -c src/Pipe.cpp

SplashState.o: src/SplashState.cpp src/SplashState.hpp
	g++ -g -Wall -c src/SplashState.cpp

StateMachine.o: src/StateMachine.cpp src/StateMachine.hpp
	g++ -g -Wall -c src/StateMachine.cpp

clean:
	rm *.o
