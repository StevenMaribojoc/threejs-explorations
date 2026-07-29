# realistic render

A study in physically-based rendering (PBR) and environment lighting. The goal is to make a 3D model look as close to a photograph as possible using Three.js's standard material system and an HDR environment map.

**[Live demo →](https://threejs-explorations-three.vercel.app/realistic-render)**

---

## What it demonstrates

- HDR environment maps loaded via `RGBELoader` for high-dynamic-range image-based lighting — the environment acts as both the light source and the reflection source
- `MeshStandardMaterial` with a full PBR texture set: color, normal, roughness, metalness, and ambient occlusion maps working together
- Tone mapping: `THREE.ACESFilmicToneMapping` to compress the HDR range into displayable values without blowing out highlights
- Color space management: texture encoding (`SRGBColorSpace` for color maps, linear for data maps) to ensure colors are interpreted correctly
- Gamma correction via renderer `outputColorSpace`
- GLTF model loading with Draco compression for reduced file size

## Technical notes

The biggest lesson here is that realistic rendering is more about correct light and texture setup than geometry complexity. A simple model with proper HDR lighting, correct tone mapping, and accurate PBR textures reads as more realistic than a complex model with flat or incorrect materials.

---

Built with Three.js, Vite, and lil-gui.
Part of [Bruno Simon's Three.js Journey](https://threejs-journey.com/) — lesson 26.