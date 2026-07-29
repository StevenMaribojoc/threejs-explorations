# shaders

Custom GLSL vertex and fragment shaders written from scratch in Three.js, without relying on Three.js's built-in material system.

**[Live demo →](https://threejs-explorations-three.vercel.app/shaders)**

---

## What it demonstrates

- Writing raw GLSL vertex and fragment shaders and wiring them to a `THREE.ShaderMaterial`
- Passing data into shaders via `uniforms` (elapsed time, resolution, custom values)
- Using `varying` variables to pass data from the vertex shader to the fragment shader
- Classic shader patterns: noise functions, gradients, UV-based color mapping, animated distortion
- Understanding what Three.js normally abstracts away — the full shader pipeline from vertex position to fragment color

## Why this matters

Most Three.js work uses `MeshStandardMaterial` or `MeshBasicMaterial` and never touches a shader directly. This project goes one level deeper — everything the GPU draws is written by hand in GLSL, giving full control over how geometry and color are computed per-vertex and per-fragment.

---

Built with Three.js, Vite, and lil-gui.
Part of [Bruno Simon's Three.js Journey](https://threejs-journey.com/) — lesson 27.