#include "raylib.h"

#define WW 800 // window width
#define WH 800 // window height

#define TITLE "TITLE"

#define TFPS 120 // target FPS

int main(void)
{
    InitWindow(WW, WH, TITLE);
    SetTargetFPS(TFPS);
    
    while (!WindowShouldClose()) {
        BeginDrawing(); {
            ClearBackground(BLACK);

        } EndDrawing();
    }
    
    CloseWindow();
    return 0;
}
