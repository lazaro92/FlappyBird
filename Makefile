#########################################
# Author: Albert Lazaro de Lara         #
#########################################


### variables ##############

CXX      := g++
OBJECTS  := main.o AssetManager.o Bird.o Collision.o Flash.o Game.o GameOverState.o GameState.o HUD.o InputManager.o Land.o MainMenuState.o Pipe.o SplashState.o StateMachine.o
LIBRARY  := -lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio
CXXFLAGS := -I Include/

ifeq ($(BUILD),develop)
    CXXFLAGS += -Wall -O2 -g
else ifeq ($(BUILD),release)
    CXXFLAGS += -O2 -s -DNDEBUG
else
    CXXFLAGS += -Wall -O0 -g
endif

############################

ifneq ($(MAKECMDGOALS),clean)
    ifeq ($(BUILD),develop)
        $(info ****************** DEVELOP BUILD ********************)
    else ifeq ($(BUILD),release)
        $(info ****************** RELEASE BUILD ********************)
    else
        $(info ******************* DEBUG BUILD *********************)
    endif
endif

############################ 


output: $(OBJECT)
	$(CXX) $(CXXFLAGS) $(LIBRARY) -o FlappyBird.out $(OBJECTS) 

main.o: Source/main.cpp
	$(CXX) $(CXXFLAGS) -c Source/main.cpp

AssetManager.o: Source/AssetManager.cpp Include/AssetManager.hpp
	$(CXX) $(CXXFLAGS) -c Source/AssetManager.cpp

Bird.o: Source/Bird.cpp Include/Bird.hpp
	$(CXX) $(CXXFLAGS) -c Source/Bird.cpp

Collision.o: Source/Collision.cpp Include/Collision.hpp
	$(CXX) $(CXXFLAGS) -c Source/Collision.cpp

Flash.o: Source/Flash.cpp Include/Flash.hpp
	$(CXX) $(CXXFLAGS) -c Source/Flash.cpp

Game.o: Source/Game.cpp Include/Game.hpp
	$(CXX) $(CXXFLAGS) -c Source/Game.cpp

GameOverState.o: Source/GameOverState.cpp Include/GameOverState.hpp
	$(CXX) $(CXXFLAGS) -c Source/GameOverState.cpp

GameState.o: Source/GameState.cpp Include/GameState.hpp
	$(CXX) $(CXXFLAGS) -c Source/GameState.cpp

HUD.o: Source/HUD.cpp Include/HUD.hpp
	$(CXX) $(CXXFLAGS) -c Source/HUD.cpp

InputManager.o: Source/InputManager.cpp Include/InputManager.hpp
	$(CXX) $(CXXFLAGS) -c Source/InputManager.cpp

Land.o: Source/Land.cpp Include/Land.hpp
	$(CXX) $(CXXFLAGS) -c Source/Land.cpp

MainMenuState.o: Source/MainMenuState.cpp Include/MainMenuState.hpp
	$(CXX) $(CXXFLAGS) -c Source/MainMenuState.cpp

Pipe.o: Source/Pipe.cpp Include/Pipe.hpp
	$(CXX) $(CXXFLAGS) -c Source/Pipe.cpp

SplashState.o: Source/SplashState.cpp Include/SplashState.hpp
	$(CXX) $(CXXFLAGS) -c Source/SplashState.cpp

StateMachine.o: Source/StateMachine.cpp Include/StateMachine.hpp
	$(CXX) $(CXXFLAGS) -c Source/StateMachine.cpp

############################

# To prevent make from getting confused by an actual file called clean, me may use .PHONY:
# .hppe "-" in -rm causes make to continue in spite of errors from rm
.PHONY: clean
clean:
	-rm $(OBJECTS) FlappyBird.out
