# physics simulation

Rigid body physics integrated with Three.js using the Cannon.js physics engine. The physics world runs independently of the render world — each frame, Cannon.js steps the simulation and the results are copied into Three.js object positions and quaternions.

**[Live demo →](https://threejs-explorations-three.vercel.app/physics-simulation)**

---

## What it demonstrates

- Physics-renderer synchronization: a Cannon.js `Body` and a Three.js `Mesh` are kept in parallel, with physics driving visual position and rotation each frame
- Collision detection: sphere-to-sphere and sphere-to-plane contacts resolved by the physics engine
- Object lifecycle: rigid bodies and their corresponding meshes are created and destroyed together to avoid memory leaks
- Sound on impact: contact events from Cannon.js trigger audio playback, with volume scaled by collision strength
- Debug visualization: Cannon.js collision geometry rendered as wireframes alongside the visual meshes
- Broadphase optimization: `SAPBroadphase` for efficient collision pair detection at scale

## Technical notes

The render loop calls `world.step(fixedTimeStep, deltaTime, maxSubSteps)` each frame rather than advancing by the raw frame delta. This keeps the physics simulation deterministic regardless of frame rate — the physics world runs at a fixed timestep and the renderer catches up with sub-steps if a frame takes too long.

---

Built with Three.js, Cannon.js, Vite, and lil-gui.
Part of [Bruno Simon's Three.js Journey](https://threejs-journey.com/) — lesson 21.