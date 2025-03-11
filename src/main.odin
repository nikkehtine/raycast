package main

import "scenes"
import rl "vendor:raylib"

Scene :: struct {
	init:   proc() -> rl.Camera3D,
	update: proc(delta_time: f32),
	draw:   proc(camera: ^rl.Camera3D),
}

main :: proc() {
	tunnel := Scene{scenes.init_tunnel, scenes.update_tunnel, scenes.draw_tunnel}

	rl.InitWindow(800, 450, "Raycast")
	rl.SetTargetFPS(60)
	defer rl.CloseWindow()

	is_running := true

	camera := tunnel.init()

	for is_running && !rl.WindowShouldClose() {
		delta_time := rl.GetFrameTime()

		if rl.IsKeyPressed(rl.KeyboardKey.ESCAPE) {
			is_running = false
		}
		rl.BeginDrawing()
		rl.ClearBackground(rl.Color{10, 10, 10, 255})

		// tunnel.update(delta_time)
		tunnel.draw(&camera)

		rl.EndDrawing()
	}
}
