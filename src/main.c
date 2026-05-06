#include "raylib.h"

#define SW 800
#define SH 800

#define TITLE "TITLE"

#define TFPS 120

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