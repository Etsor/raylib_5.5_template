#include "raylib.h"

#define SW 800 // screen width
#define SH 800 // screen height

#define TITLE "TITLE"

#define TFPS 120 // target FPS

int main(void)
{
    InitWindow(SW, SH, TITLE);
    SetTargetFPS(TFPS);
    while (!WindowShouldClose()) {
        BeginDrawing(); {

        } EndDrawing();
    }
    CloseWindow();
    return 0;
}
