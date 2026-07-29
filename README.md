# Three.js Explorations

**[View all demos →](https://threejs-explorations-three.vercel.app)**

Selected exercises and experiments from Bruno Simon's Three.js Journey
course, chosen for technical depth and visual interest. Each project is
a standalone Vite app demonstrating a specific rendering or graphics
concept in the browser.

All code in this repo was written by hand prior to LLM coding tools —
no AI generation, no autocomplete beyond standard IDE tooling. The work
reflects genuine learning of the underlying concepts rather than
prompted output.

---

## Projects

### Shaders (lesson 27)
Custom GLSL vertex and fragment shaders written from scratch. Includes
uniform-driven animations and shader pattern generation without any
Three.js material abstraction.

**[Live demo →](https://threejs-explorations-three.vercel.app/shaders)**

### Raging Sea (lesson 29)
Animated ocean surface using custom vertex shader displacement. Wave
frequency, amplitude, and color are all controlled via uniforms and
tweakable in real time via a debug UI.

**[Live demo →](https://threejs-explorations-three.vercel.app/raging-sea)**

### Galaxy Generator (lesson 19)
Procedural galaxy using BufferGeometry and custom particle positioning
math. Parameters (star count, radius, branches, spin, randomness) are
all live-tweakable.

**[Live demo →](https://threejs-explorations-three.vercel.app/galaxy-generator)**

### Physics Simulation (lesson 21)
Rigid body physics using Cannon.js integrated with Three.js. Includes
a live debug overlay showing collision geometry, demonstrating
physics-renderer synchronization.

**[Live demo →](https://threejs-explorations-three.vercel.app/physics-simulation)**

### Haunted House (lesson 17)
Environment scene combining shadow mapping, point lights, fog, and
textured geometry. A contained exercise in building atmosphere through
lighting rather than geometry complexity.

**[Live demo →](https://threejs-explorations-three.vercel.app/haunted-house)**

### Realistic Render (lesson 26)
Environment map reflections and PBR (physically-based rendering)
material setup. Demonstrates how lighting environment affects material
appearance.

**[Live demo →](https://threejs-explorations-three.vercel.app/realistic-render)**

---

Built with Three.js, Vite, and lil-gui. Based on Bruno Simon's
[Three.js Journey](https://threejs-journey.com/) course.