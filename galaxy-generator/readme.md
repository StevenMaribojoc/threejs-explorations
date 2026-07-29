# galaxy generator

A procedurally generated spiral galaxy built from a single `THREE.Points` object. Every star position is computed from scratch in JavaScript and written into a `BufferGeometry` — no meshes, no textures, just math and particles.

**[Live demo →](https://threejs-explorations-three.vercel.app/galaxy-generator)**

---

## What it demonstrates

- `THREE.BufferGeometry` and `Float32Array` for manual vertex data construction
- Procedural position generation: polar coordinates converted to Cartesian, with spin offset by radius and randomness distributed by a power curve to cluster stars toward the center
- Per-vertex color interpolation between inner and outer colors using `THREE.Color.lerp`
- Full regeneration on parameter change: the geometry is destroyed and rebuilt from scratch each time a parameter updates, demonstrating efficient BufferGeometry disposal
- Live parameter control: star count, galaxy radius, branch count, spin factor, randomness, and inner/outer colors are all tweakable in real time

## Technical notes

The galaxy uses one draw call regardless of star count — all positions are packed into a single `BufferGeometry` with a `position` attribute and a `color` attribute. `THREE.PointsMaterial` with `vertexColors: true` reads the per-vertex color array, producing the gradient from core to edge.

---

Built with Three.js, Vite, and lil-gui.
Part of [Bruno Simon's Three.js Journey](https://threejs-journey.com/) — lesson 19.