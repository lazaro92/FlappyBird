cmake_minimum_required(VERSION 3.28)
project(flappy_bird
  LANGUAGES CXX
  VERSION 1.0
)

add_subdirectory(dependencies)

add_executable(flappy_bird
  src/AssetManager.cpp
  src/Bird.cpp
  src/Collision.cpp
  src/Flash.cpp
  src/Game.cpp
  src/GameOverState.cpp
  src/GameState.cpp
  src/HUD.cpp
  src/InputManager.cpp
  src/Land.cpp
  src/MainMenuState.cpp
  src/Pipe.cpp
  src/SplashState.cpp
  src/StateMachine.cpp
  src/main.cpp
)

target_include_directories(flappy_bird
  PUBLIC
  "include/"
)

target_link_libraries(flappy_bird PRIVATE sfml-graphics sfml-audio)

add_custom_command(TARGET flappy_bird PRE_BUILD
  COMMAND ${CMAKE_COMMAND} -E copy_directory
  ${CMAKE_SOURCE_DIR}/resources/ $<TARGET_FILE_DIR:flappy_bird>/resources
)
