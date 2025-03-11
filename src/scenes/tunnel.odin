package scenes

import rl "vendor:raylib"

draw_tunnel :: proc() {
	rl.ClearBackground(rl.Color{10, 10, 10, 255})
	rl.DrawText("Tunnel!", 360, 200, 20, rl.LIGHTGRAY)
}
