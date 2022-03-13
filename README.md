FlappyBird Game created with c++ and SFML

## ❔ About the game

Flappy Bird is a mobile game developed by Vietnamese video game artist and programmer Dong Nguyen, under his game development company Gears. The game is a side-scroller where the player controls a bird, attempting to fly between columns of green pipes without hitting them. Nguyen created the game over the period of several days, using a bird protagonist that he had designed for a cancelled game in 2012.

This project is a recreation of the original Flappy Bird game.

## ⚙️ Project requirements

For the moment it only runs in Linux, installing the [SFML library](https://www.sfml-dev.org/).

By default, the Makefile uses G++ compiler, but you can change the variable `CXX`.

## 🔨 Build

There is a Makefile to ease the build of the project. Three different build options are available:

1. `make` or `make BUILD=debug`: builds the project without any compiler optimizations and with debug symbols.
2. `make BUILD=develop`: builds the project with all the compiler optimizations (O2) and with debug symbols.
3. `make BUILD=release`: **RECOMMENDED** builds the project with all compiler optimizations and without debug symbols.

## 🕹️ How to Play

The main goal of the game is to guide the bird through the pipes that appear from right to left, avoiding the collision with them. The more pipes it pass, the more points the player acquires. The game ends when the bird collides with the ground or with any pipe.

A mouse or a touchpad are required in order to play.

### Controllers

- Left mouse button: makes the bird "jump" a certain vertical distance. 
