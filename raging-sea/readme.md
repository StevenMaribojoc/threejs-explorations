# raging sea

An animated ocean surface driven entirely by a custom GLSL vertex shader. No physics simulation — the wave motion is pure math applied per-vertex on the GPU.

**[Live demo →](https://threejs-explorations-three.vercel.app/raging-sea)**

---

## What it demonstrates

- Vertex displacement: moving geometry in the vertex shader using elapsed time as a `uniform`
- Layered sine wave functions to produce organic, non-repeating wave motion
- Color interpolation in the fragment shader based on wave elevation — peaks lighten, troughs deepen
- Real-time parameter control via lil-gui: wave frequency, amplitude, speed, and color are all live-tweakable without recompiling the shader
- Frame-rate-independent animation using a time uniform updated each tick

## Technical notes

The plane geometry has high vertex subdivision so there's enough resolution for the shader displacement to read as smooth waves. The color is computed in the fragment shader by sampling the vertex's world-space Y position (passed as a `varying` from the vertex stage) and mixing between a deep trough color and a bright crest color.

---

Built with Three.js, Vite, and lil-gui.
Part of [Bruno Simon's Three.js Journey](https://threejs-journey.com/) — lesson 29.