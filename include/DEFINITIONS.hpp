#pragma once

#define SCREEN_WIDTH 768
#define SCREEN_HEIGHT 1024

#define SPLASH_STATE_SHOW_TIME 3.0

#define SPLASH_SCENE_BACKGROUND_FILEPATH "resources/res/Splash-Background.png"
#define MAIN_MENU_BACKGROUND_FILEPATH "resources/res/sky.png"
#define GAME_BACKGROUND_FILEPATH "resources/res/sky.png"
#define GAME_OVER_BACKGROUND_FILEPATH "resources/res/sky.png"

#define GAME_TITLE_FILEPATH "resources/res/title.png"
#define PLAY_BUTTON_FILEPATH "resources/res/PlayButton.png"

#define PIPE_UP_FILEPATH "resources/res/PipeUp.png"
#define PIPE_DOWN_FILEPATH "resources/res/PipeDown.png"
#define SCORING_PIPE_FILEPATH "resources/res/InvisibleScoringPipe.png"

#define LAND_FILEPATH "resources/res/land.png"

#define BIRD_FRAME_1_FILEPATH "resources/res/bird-01.png"
#define BIRD_FRAME_2_FILEPATH "resources/res/bird-02.png"
#define BIRD_FRAME_3_FILEPATH "resources/res/bird-03.png"
#define BIRD_FRAME_4_FILEPATH "resources/res/bird-04.png"

#define FLAPPY_FONT_FILEPATH "resources/fonts/FlappyFont.ttf"
#define GAME_OVER_TITLE_FILEPATH "resources/res/Game-Over-Title.png"
#define GAME_OVER_BODY_FILEPATH "resources/res/Game-Over-Body.png"

#define BRONZE_MEDAL_FILEPATH "resources/res/Bronze-Medal.png"
#define SILVER_MEDAL_FILEPATH "resources/res/Silver-Medal.png"
#define GOLD_MEDAL_FILEPATH "resources/res/Gold-Medal.png"
#define PLATINUM_MEDAL_FILEPATH "resources/res/Platinum-Medal.png"

#define HIT_SOUND_FILEPATH "resources/audio/Hit.wav"
#define POINT_SOUND_FILEPATH "resources/audio/Point.wav"
#define WING_SOUND_FILEPATH "resources/audio/Wing.wav"

#define PIPE_MOVEMENT_SPEED 200.0f
#define PIPE_SPAWN_FREQUENCY 3.0f

#define BIRD_ANIMATION_DURATION 0.4f

#define BIRD_STATE_STILL 1
#define BIRD_STATE_FALLING 2
#define BIRD_STATE_FLYING 3

#define GRAVITY 350.0f
#define FLYNG_SPEED 350.0f
#define FLYNG_DURATION 0.25f

#define ROTATION_SPEED 100.0f

enum GameStates
{
	eReady,
	ePlaying,
	eGameOver
};

#define FLASH_SPEED 1500.0f
#define TIME_BEFORE_GAME_OVER_APPEARS 1.5f

#define BRONZE_MEDAL_SCORE 0
#define SILVER_MEDAL_SCORE 5
#define GOLD_MEDAL_SCORE 25
#define PLATINUM_MEDAL_SCORE 100
