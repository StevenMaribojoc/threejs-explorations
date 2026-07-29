# haunted house

A scene built to demonstrate how atmosphere is created through lighting, shadow, and texture rather than geometric complexity. The house itself is simple box geometry — everything that makes it feel like a haunted house comes from the light and material setup.

**[Live demo →](https://threejs-explorations-three.vercel.app/haunted-house)**

---

## What it demonstrates

- Shadow mapping: `castShadow` and `receiveShadow` configured per-object, with shadow camera frustum tuned to the scene bounds for crisp results
- Multiple light types: a directional moonlight, flickering point lights for the door lanterns, and ambient for scene fill — each contributing differently to the mood
- PBR textures: color, normal, roughness, ambient occlusion, and metalness maps applied to door and brick geometry, demonstrating how each map layer contributes to the final surface appearance
- Fog: `THREE.FogExp2` for exponential density falloff, tying the scene together and hiding the void at the edges
- Procedural graveyard: headstones positioned and rotated with randomized offsets using `Math.random()` and trigonometry
- Particle system: floating ghost particles using `THREE.Points` with a sprite texture

## Technical notes

The scene uses `MeshStandardMaterial` throughout rather than custom shaders — this lesson is about understanding what PBR materials do and how light interacts with surfaces, not about writing shader code directly.

---

Built with Three.js, Vite.
Part of [Bruno Simon's Three.js Journey](https://threejs-journey.com/) — lesson 17.