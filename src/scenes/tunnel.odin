package scenes

import rl "vendor:raylib"

init_tunnel :: proc() -> rl.Camera3D {
	camera := rl.Camera3D{}
	camera.position = rl.Vector3{10.0, 0.0, 0.0}
	camera.target = rl.Vector3{0.0, 0.0, 0.0}
	camera.up = rl.Vector3{0.0, 1.0, 0.0}
	camera.fovy = 60.0
	camera.projection = rl.CameraProjection.PERSPECTIVE

	return camera
}

update_tunnel :: proc(delta_time: f32) {
}

draw_tunnel :: proc(camera: ^rl.Camera3D) {
	rl.ClearBackground(rl.Color{10, 10, 10, 255})

	rl.BeginMode3D(camera^)
	rl.DrawCube(rl.Vector3{0.0, 0.0, 0.0}, 1.0, 1.0, 1.0, rl.RED)
	rl.EndMode3D()

	rl.DrawText("Tunnel!", 360, 300, 20, rl.LIGHTGRAY)
}
