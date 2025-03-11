package main

import "scenes"
import rl "vendor:raylib"

main :: proc() {
	rl.InitWindow(800, 450, "raylib [core] example - basic window")
	rl.SetTargetFPS(60)
	defer rl.CloseWindow()

	is_running := true

	for is_running && !rl.WindowShouldClose() {
		delta_time := rl.GetFrameTime()

		if rl.IsKeyPressed(rl.KeyboardKey.ESCAPE) {
			is_running = false
		}
		rl.BeginDrawing()
		rl.ClearBackground(rl.Color{10, 10, 10, 255})

		scenes.draw_tunnel()

		rl.EndDrawing()
	}
}
