// uniform mat4 projectionMatrix;
// uniform mat4 viewMatrix;
// uniform mat4 modelMatrix;
uniform vec2 uFrequency;
uniform float uTime;
uniform float uAmplitude;

// attribute vec3 position;
attribute float aRandom;
// attribute vec2 uv;

varying vec2 vUv;
varying float vElevation;
// varying float vRandom;

void main()
{

    vec4 modelPosition = modelMatrix * vec4(position, 1.0);

    float elevation = sin(modelPosition.x * uFrequency.x - uTime) * uAmplitude;
    elevation += sin(modelPosition.y * uFrequency.y - uTime) * uAmplitude;

    // modelPosition.z += sin(modelPosition.x * uFrequency.x - uTime) * uAmplitude;
    // modelPosition.z += sin(modelPosition.y * uFrequency.y - uTime) * uAmplitude;
    modelPosition.z = elevation;

    vec4 viewPosition = viewMatrix * modelPosition;
    vec4 projectionPosition = projectionMatrix * viewPosition;

    gl_Position = projectionPosition;   

    vUv = uv;
    vElevation = elevation;
}